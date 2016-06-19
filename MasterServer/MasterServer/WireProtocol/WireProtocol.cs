using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Hik.Communication.Scs.Communication.Messages;
using Hik.Communication.Scs.Communication.Protocols.BinarySerialization;

namespace MasterServer.WireProtocol
{
    public class WireProtocol : BinarySerializationProtocol
    {
        protected override byte[] SerializeMessage(IScsMessage message)
        {
            return Encoding.UTF8.GetBytes(((ScsTextMessage)message).Text);
        }

        protected override IScsMessage DeserializeMessage(byte[] bytes)
        {
            return new ScsTextMessage(Encoding.UTF8.GetString(bytes));
        }
    }
}
