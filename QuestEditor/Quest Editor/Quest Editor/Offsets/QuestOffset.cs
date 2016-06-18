namespace QuestEditor
{
    public enum QuestOffset : uint
    {
        // Zero-based offset
        // starting from Quest
        // start offset.
        QuestDataLen = 0,
        QuestID = 4,
        QuestTitle = 6,
        QuestDescript = 8,
        IsRepeat = 12,
        IsNeedLevel = 16,
        MinLevel = 17,
        MaxLevel = 18,
        IsEnabled = 19,
        StartNPC = 20,
        PrevQuest = 46,
        IsMulti = 50,
        Class = 51,

        ItemData = 164,
    }
}
