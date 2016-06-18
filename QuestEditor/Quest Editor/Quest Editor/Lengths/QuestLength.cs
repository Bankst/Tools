namespace QuestEditor
{
    public enum QuestLength : ushort
    {
        // Per Quest structure
        QuestDataLen = 4,
        QuestID = 2,
        QuestTitle = 2,
        QuestDescript = 2,
        IsRepeat = 1,
        MinLevel = 1,
        MaxLevel = 1,
        StartNPC = 2,
        PrevQuest = 2,
        IsMulti = 1,
        Class = 1,
        IsNeedLevel = 1,

        IsEnabled = 1,
        IsNPC = 1,
        NPCMobID = 2,
        IsToKill = 1,
        KillAmount = 1,

        ItemType = 1,
        ItemID = 2,
        ItemCount = 2,

        ItemData = 284,

        RewardGiveType = 1,
        RewardType = 1,
        RewardAmount = 8,

        Total = 616,
    }
}
