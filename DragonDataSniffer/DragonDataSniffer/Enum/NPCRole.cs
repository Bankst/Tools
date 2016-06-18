using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public enum NPCRole
{
    Merchant,
    ClientMenu,
    NPCMenu,
    QuestNpc,
    StoreManager,
    JobMaster,
    Guard,
    Gate,
    IDGate,
    None,
}

public enum NPCArgument
{
    None,
    SoulStone,
    Item,
    Weapon,
    Guild,
}