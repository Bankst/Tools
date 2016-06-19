Imports System.IO
Imports System.Text
Imports System.Net
Imports System.Net.Sockets
Class Form1
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub
    Private Shared sock As Socket
    Private Shared ReceiveBuffer As Byte()
    <STAThread()> _
    Public Shared Sub Main()
        sock = New Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp)
        sock.Connect(New IPEndPoint(IPAddress.Parse("188.138.115.201"), 9116))
        BeginReceive()
        Console.ReadLine()
    End Sub
    Private Shared Sub BeginReceive()
        ReceiveBuffer = New Byte(4095) {}
        sock.BeginReceive(ReceiveBuffer, 0, ReceiveBuffer.Length, SocketFlags.None, AddressOf OnReceive, Nothing)
    End Sub
    Private Shared Sub OnReceive(ByVal ar As IAsyncResult)
        Try
            Dim received As Integer = sock.EndReceive(ar)

            Dim recData As Byte() = New Byte(received - 1) {}
            Buffer.BlockCopy(ReceiveBuffer, 0, recData, 0, received)

            Dump(recData, 0, recData.Length)

            If recData.Length < 2 Then
                Return
            End If
            HandlePacket(recData)
        Finally
            BeginReceive()
        End Try
    End Sub
    Public Shared Sub Dump(ByVal pBuffer As Byte(), ByVal pStart As Integer, ByVal pLength As Integer)
        If pLength <= 0 Then
            Return
        End If
        Dim split = BitConverter.ToString(pBuffer, pStart, pLength).Split("-"c)
        Dim hex = New StringBuilder(48)
        Dim ascii = New StringBuilder(16)
        Dim buffer = New StringBuilder()
        buffer.AppendFormat("Packet: len({0})" & vbLf, pLength)
        For i As Integer = 0 To split.Length - 1
            Dim temp As Char = Convert.ToChar(pBuffer(pStart + i))
            hex.Append(split(i)).Append(" "c)
            If Char.IsWhiteSpace(temp) OrElse Char.IsControl(temp) Then
                temp = "."c
            End If
            ascii.Append(temp)
            If (i + 1) Mod 16 = 0 Then
                buffer.AppendFormat("{0} {1}", hex, ascii).AppendLine()
                hex.Clear()
                ascii.Clear()
            End If
        Next
        If hex.Length > 0 Then
            If hex.Length < 48 Then
                hex.Append(" "c, 48 - hex.Length)
            End If
            buffer.AppendFormat("{0} {1}", hex, ascii).AppendLine()
        End If
        Console.WriteLine(buffer)
    End Sub
    Private Shared Sub HandlePacket(ByVal data As Byte())
        Try
            Using stream = New MemoryStream(data)
                Using reader = New BinaryReader(stream)
                    Dim header = reader.ReadUInt16()
                    Console.WriteLine([String].Format("Header: {0}{1}{1}", header, Environment.NewLine))
                    If header = CUShort(258) Then
                        sock.Send(New Byte() {CByte(9), CByte(2), CByte(8), CByte(0), CByte(5), CByte(8), _
                         CByte(0), CByte(0), CByte(13), CByte(0)})
                    ElseIf header = CUShort(773) Then
                        Dim msgData = Encoding.ASCII.GetBytes(">test message")
                        Dim sendData = New Byte(4 + (msgData.Length - 1)) {}
                        Buffer.BlockCopy(msgData, 0, sendData, 3, msgData.Length)
                        sendData(0) = CByte(10)
                        sendData(1) = CByte(16)
                        sendData(2) = CByte(32)
                        sendData(sendData.Length - 1) = CByte(0)
                        sock.Send(sendData)
                        Console.WriteLine("message sent")
                    End If
                End Using
            End Using
        Catch ex As Exception
            Console.WriteLine([String].Format("ex: {0}  --  {1}", ex.Message, ex.StackTrace))
        End Try
    End Sub
End Class



