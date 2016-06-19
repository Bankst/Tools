using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Sockets;
using System.Web;

namespace OdinRestServer
{

    public class Request
    {
        public string sMethod;
        public string sRequest;
        public Dictionary<string, string> Params;
        public string sHTTP;
    }

   public class RestClient
   {

       public Socket socket;
       private byte[] inBuffer = new byte[16000];
       public string[] HeaderArray;
       public string ParamString;
       public string sIP = "";
       public RestClient(Socket s)
       {
           try
           {
               socket = s;
               sIP = s.RemoteEndPoint.ToString().Split(':')[0];
               s.BeginReceive(inBuffer, 0, 16000, SocketFlags.None, new AsyncCallback(onDataRecieve), s);
           }
           catch (Exception e)
           {
               Program.L.log("Socket", "SOCKET SET ERROR: " + sIP, e);
               dc();
           }

       }

       private void onDataRecieve(IAsyncResult ar)
       {
           try
           {
               int len = 0;
               len = socket.EndReceive(ar);
               if (len == 0)
               {
                   dc();
               }

               string Request = Encoding.ASCII.GetString(inBuffer).Trim(new char[] { '\0' });

               if (!Request.Contains("OutsparkCPP"))
               {
                   Program.L.log("UnknownClient", "[" + sIP + "]" + Request, true);
                   dc();
                   return;
               }


               try
               {
                   ProcessRequest(Request);
               }

               catch (Exception i)
               {
                   Program.L.log("FailedRequest", Request + " :: " + i.Message + "" + i.StackTrace, true);
               }


               dc();



           }
           catch (Exception e)
           {
               Program.L.log("Socket", "SOCKET READ/WRITE ERROR", e);
               dc();
           }
       }


       void dc()
       {
           try
           {
               socket.Disconnect(true);
               socket.Close();
           }
           catch { }
       }

       void ProcessRequest(string r)
       {
           r = r.Replace(@"\", "/");
           HeaderArray = r.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);
           Program.L.log("Requests", HeaderArray[0]);
           Request q = new Request();
           string[] aq = HeaderArray[0].Split(' ');
           q.sMethod = aq[0];
           q.sRequest = aq[1].Split('?')[0];
           q.Params = FillParams(q);
           q.sHTTP = aq[2];

           string ret = "";

           if (q.sRequest == "/user/v1/getInfo")
           {
               ret = Program.DBM.getInfo(q.Params["token"]);
           }

           if (q.sRequest == "/store/v1/getPurchasedItems")
           {
               ret = "{\"items\":[";
               ret += Program.DBM.getPurchasedItems(q.Params["outsparkID"]);
               ret += "]}";
           }


           if (q.sRequest == "/store/v1/setItemUsed")
           {
               ret = Program.DBM.setItemUsed(q.Params["outsparkID"], q.Params["characterID"], q.Params["orderItemID"]);
               if (ret == "exit")
               {
                   return;
               }
           
           
           }


           Program.L.log("Returns", ret);
           Send("HTTP/1.1", "200 OK", ret, "application/json");
       }



       public Dictionary<string, string> FillParams(Request q)
       {
            Dictionary<string, string> Params = new Dictionary<string, string>();
           ParamString = HeaderArray[0].Replace("'", "").Replace(q.sMethod + " " + q.sRequest + "?", "").Replace(" HTTP/1.0", "").Replace("\\", "/").Replace(" HTTP/1.1", "");
           foreach ( String Param in ParamString.Split('&')) {
               try
               {
                   Params.Add(Param.Split('=')[0], Param.Split('=')[1]);
               } catch {}
           }
           return Params;
       }

       private void Send(string sHttpVersion, string sStatusCode, string sData, string Type = "text/html")
       {
           try
           {
               string sBuffer;
               sBuffer = sHttpVersion + " " + sStatusCode + Environment.NewLine;
               sBuffer = sBuffer + "Server: Stu Bedore REST Server" + Environment.NewLine;
               sBuffer = sBuffer + "Content-Type: " + Type + Environment.NewLine;
               sBuffer = sBuffer + "Expires: Sat, 16 Mar 1991 08:30:00 GMT" + Environment.NewLine;

               sBuffer = sBuffer + "Cache-Control: no-cache, no-store, must-revalidate" + Environment.NewLine;
               sBuffer = sBuffer + "Pragma: no-cache" + Environment.NewLine;

               sBuffer = sBuffer + "Content-Length: " + sData.Length + Environment.NewLine + Environment.NewLine + sData;
               byte[] bSendData = Encoding.ASCII.GetBytes(sBuffer);
               socket.Send(bSendData, bSendData.Length, 0);
           }
           catch
           {
           }
       }




   }
}
