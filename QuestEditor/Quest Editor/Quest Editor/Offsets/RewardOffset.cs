namespace QuestEditor
{
    public enum RewardOffset
    {
        RewardMethod = 448,
        RewardType = 449,

        RewardAmount_ItemID = 452,

        // IF Reward Type == Item
        // ItemID = 452,
        ItemCount = 454,
        // ELSE
        // RewardAmount = 452,
        // ENDIF
    }
}
