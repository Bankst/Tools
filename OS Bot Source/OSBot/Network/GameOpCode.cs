public static class GameOpCode
{
    public struct Client
    {
        //Login
        public enum H3 : byte
        {
            Version = 1,
            Login = 32,
            WorldReRequest = 27,
            FileHash = 4,
            WorldSelect = 11,
            //used for world
            WorldClientKey = 15,
            BackToCharSelectFinish = 24,
        }
        
        //World
        public enum H2 : byte
        {
            Pong = 5,
            RequestTime = 13,
        }

        public enum H4 : byte
        {
            CharSelect = 1,

            EnterBeautyShop = 124,      // FF

        }

        public enum H5 : byte
        {
            CreateCharacter = 1,
            DeleteCharacter = 7
        }

        public enum H8 : byte
        {
            ChatWhisper = 12,
            ChatGroup = 20,
        }

        public enum H14 : byte
        {
            GroupInvite = 2,
            GroupInviteAccept = 4,
            GroupInviteReject = 5,
            GroupLeave = 10,
            GroupMemberKick = 20,
            GroupChangeMaster = 40,
        }

        public enum H21 : byte
        {
            FriendInvite = 1,
            FriendInviteResponse = 4,
            FriendDelete = 5
        }

        public enum H22 : byte
        {
            ClientReadyWorld = 27
        }

        public enum H28 : byte
        {
            GetQuickBar = 2,
            GetQuickBarState = 4,
            GetGameSettings = 10,
            GetClientSettings = 12,
            GetShortCuts = 14,
            SaveQuickBar = 16,
            SaveQuickBarState = 17,
            SaveGameSettings = 20,
            SaveClientSettings = 21,
            SaveShortCuts = 22,
        }

        public enum H29 : byte
        {
            GetGuildList = 3,
            CreateGuild = 5,
            GuildInviteRequest = 9,
            GuildInviteResponse = 12,
            UpdateGuildMessage = 16,
            UpdateGuildMemberRank = 22,
            LeaveGuild = 28,
            GuildChat = 115,
            GuildNameRequest = 118,
            GuildMemberListRequest = 190,
        }

        public enum H31 : byte
        {
            GetUnknown = 6
        }

        public enum H37 : byte
        {
            MasterRequest = 1,
            MasterRequestResponse = 5,
        }

        public enum H38 : byte
        {
            GetAcademyMemberList = 7,
            GetAcademyList = 11,
            JoinAcademy = 17,
            LeaveAcademy = 27,


            AcademyChat = 104,
        }
    }


    public struct Server
    {
        //Login
        public enum H3 : byte
        {
            IncorrectVersion = 2,
            VersionAllowed = 3,
            FilecheckAllow = 5,
            Error = 9,
            WorldlistNew = 10,
            WorldServerIP = 12,
            WorldistResend = 28,
            CharacterList = 20   //used for world
        }
        
        //World
        public enum H2 : byte
        {
            Ping = 4,
            Unk1 = 14,
            UpdateTime = 73
        }

        public enum H4 : byte
        {
            ConnectError = 2,
            ZoneServerIP = 3,
            CharacterGuildinfo = 18,
            UnkBeautyShop = 121,
            EnterBeautyShopResponse = 125,
            CharacterGuildacademyinfo = 151,
        }

        public enum H5 : byte
        {
            CharCreationError = 4,
            CharCreationOK = 6,
            CharDeleteOK = 12
        }

        public enum H8 : byte
        {
            WisperFrom = 13,
            WisperTargetNotfound = 14,
            WisperTo = 15,
            YellowNotice = 17,
            ChatGroup = 21,
        }

        public enum H14 : byte
        {
            GroupInviteCharacter = 3,
            GroupInviteReject = 7,
            GroupInfo = 9,
            GroupMemberLeave = 11,
            GroupMemberKick = 21,
            GroupNewMaster = 41,
        }

        public enum H21 : byte
        {
            FriendInviteResponse = 2,
            FriendInviteRequest = 3,
            FriendDelete = 6,
            FriendList = 7,
            FriendExtraInfo = 8,
            FriendLoggedIn = 9,
            FriendLoggedOut = 10,
            FriendInviteReject = 11,
            FriendDeletedYou = 12,
            FriendChangedMap = 13,
            FriendUpdateParty = 14,
            FriendUpdateLevel = 15,
        }

        public enum H25 : byte
        {
            WorldMessage = 2,
        }

        public enum H28 : byte
        {
            LoadQuickBar = 3,
            LoadQuickBarState = 5,
            LoadGameSettings = 11,
            LoadClientSettings = 13,
            LoadShortCuts = 15
        }

        public enum H29 : byte
        {
            SendGuildList = 4,
            CreateGuildResponse = 6,
            GuildInviteError = 10,
            GuildInviteRequest = 11,
            UpdateGuildMessageResponse = 17,
            UpdateGuildMemberRankResponse = 23,
            GuildMemberList = 27,
            LeaveGuildResponse = 29,
            SendUpdateGuildDetails = 45,
            GuildMemberJoined = 54,
            GuildMemberLeft = 56,
            UpdateGuildMemberRank = 57,
            GuildMemberLoggedIn = 61,
            GuildMemberLoggedOut = 62,
            GuildChat = 116,
            GuildNameResult = 119,
            ClearGuildDetailsMessage = 191,
            UnkMessageChange = 196,
        }

        public enum H31 : byte
        {
            LoadUnkown = 7
        }

        public enum H37 : byte
        {
            MasterRequestResponse = 2,
            SendMasterRequestAccept = 3,
            SendMasterRequest = 4,
            SendMasterList = 20,
        }

        public enum H38 : byte
        {
            SendAcademyList = 12,
            SendAcademyMemberList = 14,
            AcademyResponse = 18,
            AcademyMemberJoined = 19,
            LeaveAcademyResponse = 28,
            AcademyMemberLeft = 96,
            AcademyMemberLoggedIn = 97,
            AcademyMemberLoggedOut = 98,
            AcademyMemberLevelUp = 102,
            AcademyChat = 105,
            AcademyChatBlocked = 106,
        }
    }
}