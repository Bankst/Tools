using System;

namespace DragonDataSniffer.Network
{
	public sealed class PacketReceivedEventArgs : EventArgs {
		public PacketReceivedEventArgs(FiestaPacket pPacket) {
			Packet = pPacket;
		}

		public FiestaPacket Packet { get; private set; }
	}
}