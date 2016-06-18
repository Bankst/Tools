namespace QuestEditor
{
    public enum RewardLength : ushort
    {
        RewardMethod = 1,
        RewardType = 1,

        // IF Reward Type == Item
        ItemID = 2,
        ItemCount = 2,
        // ELSE
        RewardAmount = 8,
        // ENDIF

        Total = 12,
    }
}
