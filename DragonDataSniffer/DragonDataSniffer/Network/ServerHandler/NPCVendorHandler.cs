using DragonDataSniffer.Object;

namespace DragonDataSniffer.Network.ServerHandler
{
    public class NPCVendorHandler
    {
        [ServerPacketHandler(Handler15Type._Header, Handler15Type.NPCItemList)]
        public static void On_NPCItemList(ServerClient client, FiestaPacket pPacket)
        {
            ushort count, unk;
            if (!pPacket.TryReadUInt16(out count)
                || !pPacket.TryReadUInt16(out unk))
            {
                client.Dispose();
                return;
            }
            MapObject pMapObject;
            if (client.pCharacter.GetTarget(out pMapObject))
            {
                if (pMapObject is NPC)
                {
                    NPC pNPC = pMapObject as NPC;

                    if (pNPC.ItemList.Count == 0)
                    {
                        for (int i = 0; i < count; i++)
                        {
                            byte slot;
                            ushort ItemID;
                            if (!pPacket.TryReadByte(out slot) || !pPacket.TryReadUInt16(out ItemID))
                            {
                                break;
                            }
                            NPCItem pItem = new NPCItem(pNPC.MobID, slot, ItemID);
                            pNPC.AddItem(pItem, true);
                        }
                    }
                    if (pNPC.Argument != NPCArgument.Item)
                    {
                        pNPC.Argument = NPCArgument.Item;
                        pNPC.UpdateArgument();
                    }
                }
            }
            client.cClient.SendPacket(pPacket);
        }
        [ServerPacketHandler(Handler15Type._Header, Handler15Type.SkillNPCStuff)]
        public static void On_SkillNPCStufft(ServerClient client, FiestaPacket pPacket)
        {
            ushort count, unk;
            if (!pPacket.TryReadUInt16(out count)
                || !pPacket.TryReadUInt16(out unk))
            {
                client.Dispose();
                return;
            }
            MapObject pMapObject;
            if (client.pCharacter.GetTarget(out pMapObject))
            {
                if (pMapObject is NPC)
                {
                    NPC pNPC = pMapObject as NPC;

                    if (pNPC.ItemList.Count == 0)
                    {
                        for (int i = 0; i < count; i++)
                        {
                            byte slot;
                            ushort ItemID;
                            if (!pPacket.TryReadByte(out slot) || !pPacket.TryReadUInt16(out ItemID))
                            {
                                break;
                            }
                            NPCItem pItem = new NPCItem(pNPC.MobID, slot, ItemID);
                            pNPC.AddItem(pItem, true);
                        }
                    }
                    if (pNPC.Role != NPCRole.JobMaster)
                    {
                        pNPC.Role = NPCRole.JobMaster;
                        pNPC.UpdateArgument();
                    }
                }
            }
            client.cClient.SendPacket(pPacket);
        }
        [ServerPacketHandler(Handler15Type._Header, Handler15Type.StuffNPCItemList)]
        public static void StuffNPCItemList(ServerClient client, FiestaPacket pPacket)
        {
            ushort count, unk;
            if (!pPacket.TryReadUInt16(out count)
                || !pPacket.TryReadUInt16(out unk))
            {
                client.Dispose();
                return;
            }
            MapObject pMapObject;
            if (client.pCharacter.GetTarget(out pMapObject))
            {
                if (pMapObject is NPC)
                {
                    NPC pNPC = pMapObject as NPC;

                    if (pNPC.ItemList.Count == 0)
                    {
                        for (int i = 0; i < count; i++)
                        {
                            byte slot;
                            ushort ItemID;
                            if (!pPacket.TryReadByte(out slot) || !pPacket.TryReadUInt16(out ItemID))
                            {
                                break;
                            }
                            NPCItem pItem = new NPCItem(pNPC.MobID, slot, ItemID);
                            pNPC.AddItem(pItem, true);
                        }
                    }
                    if (pNPC.Argument != NPCArgument.Item)
                    {
                        pNPC.Argument = NPCArgument.Item;
                        pNPC.UpdateArgument();
                    }
                }
            }
            client.cClient.SendPacket(pPacket);
        }
    }
}
