using System;
using System.Net;
using System.Threading;
using System.Net.Sockets;
using System.Collections.Concurrent;

namespace OSBot.Network
{
    public abstract class TCPClient
    {
        public Socket Socket { get; private set; }
        public IPAddress IP { get; private set; }
        public DateTime ConnectTime { get; set; }
        public event ObjectEvent<TCPClient> OnDispose;
        public bool IsDisposed { get { return IsDisposedInt > 0; } }
        private int IsDisposedInt;
        public const int MaxReceiveBuffer = 16384; // max 16kb at once
        protected byte[] ReceiveBuffer { get; private set; }
        private ConcurrentQueue<ByteArray> SendBuffer;
        private int IsSendingInt;
        
        protected TCPClient(Socket Socket)
        {
            this.Socket = Socket;
            IP = ((IPEndPoint)Socket.RemoteEndPoint).Address;
            ConnectTime = DateTime.Now;
            ReceiveBuffer = new byte[MaxReceiveBuffer];
            SendBuffer = new ConcurrentQueue<ByteArray>();
        }

        public void Dispose()
        {
            if (Interlocked.CompareExchange(ref IsDisposedInt, 1, 0) == 0)
            {
                if (OnDispose != null)
                {
                    OnDispose.Invoke(this);
                    OnDispose = null;
                }
                
                DisposeInternal();
                
                //clean up
                try
                {
                    Socket.Shutdown(SocketShutdown.Both);
                }
                catch (Exception) { }
                finally
                {
                    Socket.Dispose();
                    Socket = null;
                    IP = null;
                    ReceiveBuffer = null;
                    SendBuffer = null;
                }
            }
        }
        protected abstract void DisposeInternal();
        ~TCPClient()
        {
            Dispose();
        }
        
        public void Start()
        {
            BeginReceive();
        }
        
        #region ASynchron receive

        private void BeginReceive()
        {
            if (IsDisposed)
                return;
            try
            {
                var args = CreateReceiveArgs();
                args.Completed += EndReceive;
                if (!Socket.ReceiveAsync(args))
                {
                    EndReceive(null, args);
                }
            }
            catch (Exception)
            {
                Dispose();
            }
        }

        private void EndReceive(object sender, SocketAsyncEventArgs args)
        {
            if (IsDisposed)
                return;
            try
            {
                var transfered = args.BytesTransferred;
                if (transfered < 1)
                {
                    //socket broken
                    Dispose();
                    return;
                }
                var data = new byte[transfered];
                Buffer.BlockCopy(ReceiveBuffer, 0, data, 0, transfered);
                OnReceive(ref data);
            }
            catch (Exception)
            {
                Dispose();
            }
            finally
            {
                args.Dispose();
                BeginReceive();
            }
        }


        protected abstract void OnReceive(ref byte[] Data);
        protected virtual SocketAsyncEventArgs CreateReceiveArgs()
        {
            var args = new SocketAsyncEventArgs();
            args.SetBuffer(ReceiveBuffer, 0, MaxReceiveBuffer);
            return args;
        }

        #endregion
        #region ASynchron send

        public void Send(Packet Packet)
        {
            Send(Packet.ToArray());
        }
        public void Send(byte[] Data)
        {
            if (IsDisposed)
                return;

            try
            {
                BeforeSend(ref Data);

                SendBuffer.Enqueue(new ByteArray(Data));


                if (Interlocked.CompareExchange(ref IsSendingInt, 1, 0) == 0)
                {
                    BeginSend();
                }
            }
            catch (Exception)
            {
                Dispose();
            }
        }
        protected abstract void BeforeSend(ref byte[] Data);

        private void BeginSend()
        {
            if (IsDisposed)
                return;

            try
            {
                ByteArray data;
                if (SendBuffer.TryPeek(out data))
                {
                    var args = new SocketAsyncEventArgs();
                    args.Completed += EndSend;
                    args.SetBuffer(data.Buffer, data.Offset, data.Length);


                    if (!Socket.SendAsync(args))
                    {
                        EndSend(null, args);
                    }
                }
                else
                    Interlocked.Exchange(ref IsSendingInt, 0);
            }
            catch (Exception)
            {
                Dispose();
            }
        }
        private void EndSend(object sender, SocketAsyncEventArgs args)
        {
            if (IsDisposed)
                return;

            try
            {
                var transfered = args.BytesTransferred;

                if (transfered < 1)
                {
                    //socket broken
                    Dispose();
                    return;
                }


                ByteArray data;
                if (SendBuffer.TryPeek(out data))
                {
                    //check if everything was send and remove the ByteArray from SendBuffer if so
                    if (data.Advance(transfered))
                        SendBuffer.TryDequeue(out data);
                }
            }
            catch (Exception)
            {
                Dispose();
            }
            finally
            {
                args.Dispose();

                if (!IsDisposed)
                {
                    if (SendBuffer.Count > 0)
                        BeginSend();
                    else
                        Interlocked.Exchange(ref IsSendingInt, 0);
                }
            }
        }

        #endregion
    }
}