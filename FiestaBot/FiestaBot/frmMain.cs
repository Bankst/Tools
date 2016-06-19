using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using FiestaBot.Packets;
using FiestaBot.Tools;
using System.IO;
using System.Xml.Serialization;

namespace FiestaBot
{
    public partial class frmMain : Form
    {
        private string BotName = "FAPB";
        public string DataPath = Path.GetDirectoryName(Application.ExecutablePath);
        public PathCreator mPathCreator;

        public Config Conf;

        private string Username { get; set; }
        private string Password { get; set; }
        private string AccountName { get; set; }
        private string CharacterName { get; set; }
        private ushort ClientKey { get; set; }
        public Character Player { get; set; }
        private List<LoginCharacter> LoginCharacters = new List<LoginCharacter>();
        public TextWriter tWriter;

        public Client LoginClient { get; set; }
        public Client WorldClient { get; set; }
        public Client GameClient { get; set; }

        public frmMain()
        {
            InitializeComponent();
            MessageBox.Show(Licensing.Decrypt("83167bbd04200b76ff5b92e41b1b00bf68cb0ce1655236fe2953695ddd3a1895"));
            LoadConfig(DataPath);
            try
            {
                tWriter = new StreamWriter(Conf.LogName, true, Encoding.ASCII);
                tWriter.WriteLine("New session started at " + DateTime.Now.ToLongTimeString());
                tWriter.WriteLine("\n\n");
            }
            catch
            {
                Log.WriteLine("Could not get access to log, file already in use.");
            }

            try
            {
                SetTitle(BotName);
                Log.sBox = lstLog;
                Log.tWriter = tWriter;
                grpWorld.Enabled = false;
                grpCharacters.Enabled = false;
                grpMisc.Enabled = false;
                DataProvider.Initialize(DataPath + "\\Data");
            }
            catch { }
        }

        void LoadConfig(string mPath)
        {
            XmlSerializer xml = new XmlSerializer(typeof(Config));
            if (!File.Exists(mPath + "\\config.xml"))
            {
                Conf = new Config();
                Conf.Admins =  new string[] { "ctesting", "devastator", "larkaros" };
                FileStream tosav = File.Create(mPath + "\\config.xml");
                xml.Serialize(tosav, Conf);
                tosav.Close();
                Log.WriteLine("Created new config file for first run.");
                return;
            }
            FileStream conf = File.Open(DataPath + "\\config.xml", FileMode.Open);
            Conf = (Config)xml.Deserialize(conf);
            conf.Close();
        }

        void lol_OnDisconnect(Client pClient)
        {
            switch (pClient.mPort)
            {
                case 9010:
                    Log.WriteLine("Disconnected from loginserver.");
                    break;
                case 9110:
                    Log.WriteLine("Disconnected from WorldServer.");
                    break;
                default:
                    Log.WriteLine("Disconnected from GameServer.");
                    break;
            }
        }

        void lol_OnConnect(Client pClient)
        {
            switch(pClient.mPort){

                case 9010: //login
            Packet ClientVersion = new Packet(0x0c01);
            ClientVersion.WriteHexString("31 36 33 31 31 36");
            pClient.SendPacket(ClientVersion);
            break;

                case 9110: //world
            Packet AuthenciateWorld = new Packet(0x0c0f);
            AuthenciateWorld.WritePaddedString(AccountName, 18);
            AuthenciateWorld.WriteUShort(ClientKey);
            pClient.SendPacket(AuthenciateWorld);
            break;

                default:
            Packet AuthenciateGame = new Packet(0x1801);
            AuthenciateGame.WriteUShort(ClientKey);
            AuthenciateGame.WritePaddedString(CharacterName, 16);
            pClient.SendPacket(AuthenciateGame);
            break;
        }
        
        }


        void lol_OnPacket(Packet pPacket, Client pClient)
        {
            switch (pClient.mPort)
            {
                case 9010:
                    HandleLoginPacket(pPacket, pClient);
                    break;
                case 9110:
                    HandleWorldPacket(pPacket, pClient);
                    break;
                default:
                    HandleGamePacket(pPacket, pClient);
                    break;
            }
        }

        #region Game
        void HandleGamePacket(Packet pPacket, Client pClient)
        {
            switch (pPacket.mOpcode)
            {
                case 0x0804:
                    pClient.SendPacket(new Packet(0x0805)); //pong
                    if (Player.Producing != null)
                        CheckProduce();
                    break;

                case 0x1038:
                    HandleGameInfo(pPacket, pClient);
                    break;

                case 0x103d:
                    HandleActiveSkillList(pPacket, pClient);
                    break;
                case 0x1047:
                    HandleInventory(pPacket, pClient);
                    break;

                case 0x1802: //Game info finished
                  PacketMerger mMerger = new PacketMerger();
                  mMerger.Append(pClient.GetEncryptedPacket(new Packet(0x1803)));
                  mMerger.Append(pClient.GetEncryptedPacket(new Packet(0x200b)));
                  pClient.SendRaw(mMerger.Dump(true));
                    break;

                case 0x1c06:
                    HandleSinglePlayerSpawn(pPacket, pClient);
                    break;

                case 0x1805:

                    break;

                case 0x3004:
                    Log.WriteLine("Inventory is full.");
                    CheckToSell();
                    break;

                case 0x1c07:
                    HandleMultiplePlayerSpawn(pPacket, pClient);
                    break;

                case 0x1c08:
                    HandleSingleNPCSpawn(pPacket, pClient);
                    break;

                case 0x1c09:
                    HandleMultiNPCSpawn(pPacket, pClient);
                    break;

                case 0x2002: //chat
                    HandleNormalChat(pPacket, pClient);
                    break;

                case 0x201a: //move entity
                    HandleMoveEntity(pPacket, pClient);
                    break;

                case 0x3c0b:
                    HandleShopData(pPacket, pClient);
                    break;

                case 0x3001:
                    HandleNewItem(pPacket, pClient);
                    break;

                case 0x1033:
                    HandleChangeMoney(pPacket, pClient);
                    break;

                case 0x3c01:
                    HandleGameQuestion(pPacket, pClient);
                    break;

                case 0x180a:
                    HandleChangeMap(pPacket, pClient);
                    break;

                default:

                    break;
            }
        }

        void HandleActiveSkillList(Packet pPacket, Client pClient)
        {
            ushort Count = 0;
            if (!pPacket.ReadSkip(5) ||
                !pPacket.ReadUShort(out Count))
            {
                Log.WriteLine("Could not parse active skill list.");
                return;
            }

            for (ushort i = 0; i < Count; i++)
            {
                ushort ID = 0;
                if (!pPacket.ReadUShort(out ID) ||
                    !pPacket.ReadSkip(10))
                {
                    Log.WriteLine("Could not parse skill.");
                    return;
                }
                Player.ActiveSkills.Add(ID);
            }
            ShowProduceSkills();
        }

        void ShowProduceSkills()
        {
            if (cmbProduce.InvokeRequired)
            {
                cmbProduce.Invoke(new MethodInvoker(delegate { cmbProduce.Items.Clear(); }));
            }
            else
                cmbProduce.Items.Clear();
            foreach (ushort x in Player.ActiveSkills)
            {
                Recipe lolwut = DataProvider.GetRecipeByID(x);
                if (lolwut == null) continue;
                if (cmbProduce.InvokeRequired)
                {
                    cmbProduce.Invoke(new MethodInvoker(delegate { cmbProduce.Items.Add(x + " - " + lolwut.Product.Name); cmbProduce.SelectedIndex = 0; }));
                }
                else
                {
                    cmbProduce.Items.Add(x + " - " + lolwut.Product.Name);
                    cmbProduce.SelectedIndex = 0;
                }
            }
        }

        void StopMoving()
        {
            if (GameClient == null) return;
            Packet stopping = new Packet(0x2012);
            stopping.WriteInt(Player.Pos.X);
            stopping.WriteInt(Player.Pos.Y);
            GameClient.SendPacket(stopping);
        }

        void HandleChangeMap(Packet pPacket, Client pClient) //also zone!
        {
            string IP = "";
            ushort Port = 0;
            ushort Key = 0;
            if (!pPacket.ReadSkip(10) ||
                !pPacket.ReadPaddedString(out IP, 16) ||
                !pPacket.ReadUShort(out Port) ||
                !pPacket.ReadUShort(out Key))
            {
                Log.WriteLine("Could not read new zoneinfo.");
                return;
            }
            Log.WriteLine("Got Warping info to {0}:{1}", IP, Port);
        }

        void HandleGameQuestion(Packet pPacket, Client pClient)
        {
            string Question = "";
            byte AnswerCount = 0;
            if (!pPacket.ReadPaddedString(out Question, 64) ||
                !pPacket.ReadByte(out AnswerCount))
            {
                Log.WriteLine("Could not parse GameQuestion.");
                return;
            }

            for (byte i = 0; i < AnswerCount; i++)
            {
                byte AnswerKey = 0;
                string Answer = "";
                if (!pPacket.ReadByte(out AnswerKey) ||
                    !pPacket.ReadPaddedString(out Answer, 32))
                {
                    Log.WriteLine("Could not read GameAnswers.");
                    return;
                }
            }

            if (Player.Warping)
                AnswerQuestion(0); //Yes
        }

        void AnswerQuestion(byte Key)
        {
            if (GameClient == null) return;
            Packet Answer = new Packet(0x3c02);
            Answer.WriteByte(Key);
            GameClient.SendPacket(Answer);
        }

        void HandleChangeMoney(Packet pPacket, Client pClient)
        {
            ulong Money = 0;
            if (!pPacket.ReadULong(out Money))
            {
                Log.WriteLine("Error reading new money count.");
                return;
            }
            long Difference = (long)(Player.Money - Money);
            Player.Money = Money;
            UpdateStats();
        }

        void CheckProduce()
        {
            if (Player.Producing == null) return;
            foreach (KeyValuePair<ItemInfo, byte> x in Player.Producing.Ingredients)
            {
                byte needed = x.Value;
                ushort ininventory = Player.GetItemCount(x.Key.ID);
                if (needed > ininventory)
                {
                    BuyIngredients(Player.Producing);
                    return;
                }
            }
                ProducePacket(Player.Producing.ID);
        }

        void CheckToSell()
        {
            if(Player.Producing == null) return;
            try
            {
                foreach (var x in Player.Producing.Ingredients)
                {
                    byte SellSlot = Player.GetSlotByFilter(x.Key.ID, x.Value);
                    if (SellSlot == 0xff) continue;
                    SellItem(SellSlot, (Player.Inventory.Find(d => d.Slot == SellSlot && d.Type == 0x09).Count));
                }
                CheckProduce();
            }
            catch
            {
                Log.WriteLine("Error selling full items.");
                CheckProduce();
            }

            try
            {
                if (Player.AutoSell)
                {
                    byte tries = 0;
                    byte Slot = 0xff;
                    while ((Slot = Player.GetSlotByFilter(Player.Producing.Product.ID, 1)) != 0xff && tries < 5)
                    {
                        ++tries;
                        SellItem(Slot, (Player.Inventory.Find(d => d.Slot == Slot && d.Type == 0x09).Count));
                    }
                }
            }
            catch { }
        }

        void ProducePacket(ushort ID)
        {
            Packet pPacket = new Packet(0x2035);
            pPacket.WriteUShort(ID);
            GameClient.SendPacket(pPacket);
        }

        void HandleNewItem(Packet pPacket, Client pClient)
        {
            //TODO: Seems wrong?!
            byte fromSlot = 0;
            byte toSlot = 0;
            ushort ID = 0;
            byte[] Data = new byte[pPacket.Length - 8];
            if (!pPacket.ReadByte(out fromSlot) ||
                !pPacket.ReadSkip(1) ||
                !pPacket.ReadByte(out toSlot) ||
                !pPacket.ReadSkip(1) ||
                !pPacket.ReadUShort(out ID) ||
                !pPacket.ReadBytes(Data))
            {
                Log.WriteLine("Error reading bought item.");
                return;
            }

            if (ID == 0xffff)
            {
                lock (Player.Inventory)
                {
                    Player.Inventory.Remove(Player.Inventory.Find(d => d.Slot == fromSlot && d.Type == 0x09));
                }
                Log.WriteLine("Item removed from slot {0}", fromSlot);
                return;
            }

            InventoryItem mItem = new InventoryItem();
            mItem.Info = Data;
            mItem.Slot = toSlot;
            mItem.ID = ID;
            lock (Player.Inventory)
            {
                Player.Inventory.Remove(Player.Inventory.Find(d => d.Slot == fromSlot && d.Type == 0x09));
                Player.AddItem(0x09, mItem);
            }

            UpdateStats();
            ItemInfo inf = DataProvider.GetItemByID(mItem.ID);
            if (inf == null) return;
            if (inf.Type != ItemType.Equip && mItem.Info.Length > 0)
            {
                mItem.Count = mItem.Info[0];
            }
            Log.WriteLine("ItemStatus update: {0} ({1} pieces)", inf.Name, mItem.Count);
          //  SendChat("I got a new item: " + inf.Name + "(" + mItem.Count + ")");
            if (Player.Producing != null) CheckProduce();
        }

        void RequestShopData(ushort ID)
        {
            if (Player.ViewingShop != null)
                CloseShop();
            //this one 'selects the npc?' other one requests it's data

            SelectEntity(ID);
            RequestEntityData(ID);

            Packet thirdselect = new Packet(0x201d); //Select entityoption
            thirdselect.WriteByte(1);
            GameClient.SendPacket(thirdselect);
        }

        void RequestEntityData(ushort ID)
        {
            Packet secondselect = new Packet(0x200a);
            secondselect.WriteUShort(ID);
            GameClient.SendPacket(secondselect);
        }

        void SelectEntity(ushort ID)
        {
            Packet firstselect = new Packet(0x2401);
            firstselect.WriteUShort(ID);
            GameClient.SendPacket(firstselect);
        }

        void Rest()
        {
            if (Player.Resting)
            {
                GameClient.SendPacket(new Packet(0x202a));
                Player.Resting = false;
            }
            else
            {
                GameClient.SendPacket(new Packet(0x2027));
                Player.Resting = true;
            }
        }

        void CloseShop()
        {
            GameClient.SendPacket(new Packet(0x200b));
            GameClient.SendPacket(new Packet(0x2408));
            Player.ViewingShop = null;
        }

        void HandleShopData(Packet pPacket, Client pClient)
        {
            short Count = 0;
            short ShopID = 0;
            if (!pPacket.ReadShort(out Count) || !pPacket.ReadShort(out ShopID))
            {
                Log.WriteLine("Could not read itemcount from shop.");
                return;
            }
            Player.ViewingShop = new Shop();
            Player.ViewingShop.ID = ShopID;
            byte key = 0;
            ushort itemid = 0;

            for (short i = 0; i < Count; i++)
            {
                if (!pPacket.ReadByte(out key) || !pPacket.ReadUShort(out itemid))
                {
                    Log.WriteLine("Error parsing shop data.");
                    return;
                }
                Player.ViewingShop.AddItem(key, itemid);
            }
            Log.WriteLine("Read {0} shop items", Count);
           // BuyItem(Player.ViewingShop.Items[1], 10);
            if (Player.Buying && Player.Producing != null)
            {
                foreach (var x in Player.Producing.Ingredients)
                {
                    ushort inInv = Player.GetItemCount(x.Key.ID);
                    if (inInv < x.Value)
                    {
                        ItemInfo mItem = x.Key;
                        byte toBuy = Player.ViewingShop.FindItemSlot(mItem.ID);
                        if (toBuy != 0xff) BuyItem(mItem.ID, (int)mItem.MaxCount);
                    }
                }
                Player.Buying = false;
                CloseShop();
                CheckProduce();
            }
        }

        void BuyItem(ushort mID, int mAmount)
        {
            if (Player.ViewingShop == null) return;
            Packet pPacket = new Packet(0x3003);
            pPacket.WriteUShort(mID);
            pPacket.WriteInt(mAmount);
            GameClient.SendPacket(pPacket);
        }

        void SellItem(byte Slot, int mAmount)
        {
            if (GameClient == null) return;
            Packet toSell = new Packet(0x3006);
            toSell.WriteByte(Slot);
            toSell.WriteInt(mAmount);
            GameClient.SendPacket(toSell);
        }

        void Jump()
        {
            GameClient.SendPacket(new Packet(0x2024));
        }

        public void MovePlayer(int X, int Y, bool walk)
        {
            if (walk)
            {
                Packet toWalk = new Packet(0x2017);
                toWalk.WriteInt(Player.Pos.X);
                toWalk.WriteInt(Player.Pos.Y);
                toWalk.WriteInt(X);
                toWalk.WriteInt(Y);
                Player.Pos.X = X;
                Player.Pos.Y = Y;
                GameClient.SendPacket(toWalk);
            }
            else
            {
                Packet toRun = new Packet(0x2019);
                toRun.WriteInt(Player.Pos.X);
                toRun.WriteInt(Player.Pos.Y);
                toRun.WriteInt(X);
                toRun.WriteInt(Y);
                Player.Pos.X = X;
                Player.Pos.Y = Y;
                GameClient.SendPacket(toRun);
            }

            UpdateStats();
            if (mPathCreator != null)
                mPathCreator.AddLocation(X, Y, 0);
        }

        void HandleMoveEntity(Packet pPacket, Client pClient)
        {
            ushort ID = 0;
            int newX = 0;
            int newY = 0;
            short Speed = 0;
            if (!pPacket.ReadUShort(out ID) ||
                !pPacket.ReadSkip(8) || //old x / y
                !pPacket.ReadInt(out newX) ||
                !pPacket.ReadInt(out newY) ||
                !pPacket.ReadShort(out Speed))
            {
                Log.WriteLine("Error parsing movement.");
                return;
            }
            if (Player.GameObjects.ContainsKey(ID))
            {
                Player.GameObjects[ID].Pos.X = newX;
                Player.GameObjects[ID].Pos.Y = newY;
                if (Player.GameObjects[ID].GetType() == typeof(GameCharacter))
                {
                    if (Player.Chasing != null && Player.Chasing == (GameCharacter)Player.GameObjects[ID])
                        MovePlayer(newX, newY, false);
                }
           //     Log.WriteLine("{0} moved to {1}:{2}", Player.Characters[ID].Name, newX, newY);
            }
        }

        void TestCommand()
        {
            RequestShopData(93);
        }

        void TradePlayer(ushort ID)
        {
            SelectEntity(ID);
            Packet mTrade = new Packet(0x4c01);
            mTrade.WriteUShort(ID);
            GameClient.SendPacket(mTrade);
        }

        void SendChat(string mString)
        {
            if (GameClient == null) return;
            Packet mPacket = new Packet(0x2001);
            mPacket.WriteByte((byte)mString.Length);
            mPacket.WriteBytes(System.Text.Encoding.ASCII.GetBytes(mString));
            GameClient.SendPacket(mPacket);
        }

        void SendShout(string mString)
        {
            if (GameClient == null) return;
            Packet mPacket = new Packet(0x201e);
            mPacket.WriteByte((byte)mString.Length);
            mPacket.WriteBytes(System.Text.Encoding.ASCII.GetBytes(mString));
            GameClient.SendPacket(mPacket);
        }

        void SendAnimation(byte Type)
        {
            if (GameClient == null) return;
            Packet anim = new Packet(0x2020);
            anim.WriteByte(Type);
            GameClient.SendPacket(anim);   
        }

        void HandleWhisper(Packet pPacket, Client pClient)
        {
            string CharName = "";
            byte Len = 0;
            string mMessage = "";
            if (!pPacket.ReadPaddedString(out CharName, 16) || 
                !pPacket.ReadByte(out Len))
            {
                Log.WriteLine("Error reading whisper info");
                return;
            }
            byte[] TextBuffer = new byte[Len];
            if (!pPacket.ReadBytes(TextBuffer))
            {
                Log.WriteLine("Error parsing the actual whisper text.");
                return;
            }
            mMessage = System.Text.Encoding.ASCII.GetString(TextBuffer);
            GameCharacter mFrom = Player.FindPlayer(CharName);
            if (Array.IndexOf<string>(Conf.Admins, CharName.ToLower()) >= 0)
            {
                if(mMessage.StartsWith("!"))
                 HandleCommand(mMessage.Substring(1, mMessage.Length - 1), mFrom);
                else
                    HandleCommand(mMessage, mFrom);
            }
        }

        void HandleNormalChat(Packet pPacket, Client pClient)
        {
            ushort ID = 0;
            byte[] TextBuffer = new byte[pPacket.Length - 5];
            if (!pPacket.ReadUShort(out ID) || !pPacket.ReadSkip(1) || !pPacket.ReadBytes(TextBuffer))
            {
                Log.WriteLine("Chat reading error...");
                return;
            }
            string pMessage = System.Text.Encoding.ASCII.GetString(TextBuffer);
            if (!Player.GameObjects.ContainsKey(ID))
                return;
            if (Player.GameObjects[ID].GetType() != typeof(GameCharacter)) return;
            if (Array.IndexOf<string>(Conf.Admins, ((GameCharacter)(Player.GameObjects[ID])).Name.ToLower()) >= 0 && pMessage.StartsWith("!"))
            {
                HandleCommand(pMessage.Substring(1, pMessage.Length - 1), (GameCharacter)Player.GameObjects[ID]);
            }
        }

        void PlayPath(string mName)
        {
            string ScriptPath = DataPath + "\\Scripts\\" + mName + ".xml";
            if (!File.Exists(ScriptPath))
            {
                Log.WriteLine("could not find {0} script", mName);
                return;
            }
            Player.PathRepr = new Scripting.PathReproducer(ScriptPath, this);
            Player.PathRepr.OnScriptFinished += new Scripting.PathReproducer.OnFinished(PathRepr_OnScriptFinished);
            Player.PathRepr.Start();
        }

        void PathRepr_OnScriptFinished()
        {
            SendChat("Finished walking script.");
        }

        void HandleCommand(string mCommand, GameCharacter mFrom)
        {
            try
            {
                string[] Command = mCommand.Split(' ');
                switch (Command[0].ToLower())
                {
                    case "shutdown":
                        Packet toshut = new Packet(0x1071);
                        GameClient.SendPacket(toshut);
                        Packet closed = new Packet(0x0c18);
                        closed.WriteByte(0);
                        GameClient.SendPacket(closed);
                        System.Threading.Thread.Sleep(500);
                        this.Close();
                        break;

                    case "replay":
                        if (Command.Length < 2) return;
                        PlayPath(Command[1]);
                        break;

                    case "stop":
                        if (Player.PathRepr != null)
                            Player.PathRepr.Stop();
                        Player.PathRepr = null;
                        break;


                    case "comehere":
                        if (mFrom == null)
                        {
                            SendChat("Could not find you, sorry...");
                            return;
                        }
                        else
                        {
                            if (Command.Length > 1)
                                MovePlayer(mFrom.Pos.X, mFrom.Pos.Y, (Command[1] == "walk") ? true : false);
                            else
                                MovePlayer(mFrom.Pos.X, mFrom.Pos.Y, false);
                        }
                        break;
                    case "jump":
                        Jump();
                        break;
                    case "chase":
                        if (Player.Chasing != null)
                        {
                            Player.Chasing = null;
                            SendChat("Chasing mode has been disabled.");
                            mPathCreator = null;
                            return;
                        }
                        GameCharacter toChase = null;
                        if (Command.Length > 1)
                            toChase = Player.FindPlayer(Command[1]);
                        else
                        {
                            if (mFrom == null) return;
                            toChase = mFrom;
                        }
                        if (toChase == null) return;
                        Player.Chasing = toChase;

                        if (Command.Length > 2)
                        {
                            if (Command[2].ToLower() == "record")
                            {
                                new System.Threading.Thread(CreatePathingForm).Start();
                            }
                        }
                        MovePlayer(toChase.Pos.X, toChase.Pos.Y, false);
                        SendChat("I'm chasing " + toChase.Name + " now.");
                        break;

                    case "trade":
                        if (Command.Length < 2)
                        {
                            SendChat("Trade [NAME]");
                            return;
                        }
                        GameCharacter toTrade = Player.FindPlayer(Command[1]);
                        if (toTrade == null) return;
                        TradePlayer(toTrade.ID);
                        break;
                    case "sell":
                        if (Command.Length < 2)
                        {
                            SendChat("Sell [SLOT] [Amount]");
                            return;
                        }
                        byte Slot = byte.Parse(Command[1]);
                        InventoryItem sellItem = Player.Inventory.Find(i => i.Slot == Slot && i.Type == 0x09);
                        if (sellItem == null) return;
                        int sellAmount = sellItem.Count;
                        if (Command.Length == 3)
                            sellAmount = int.Parse(Command[2]);
                        if (Player.ViewingShop == null)
                            RequestShopData(93);
                        SellItem(Slot, sellAmount);
                        break;

                    case "test":
                        TestCommand();
                        break;

                    case "anim":
                        if (Command.Length < 2) return;
                        SendAnimation(byte.Parse(Command[1]));
                        break;

                    case "rest":
                        Rest();
                        break;

                    case "addmin":
                        Array.Resize<string>(ref Conf.Admins, Conf.Admins.Length + 1);
                        Conf.Admins[Conf.Admins.Length - 1] = Command[1].ToLower();
                        break;

                    case "pos":
                        SendChat("My position is " + Player.Pos.X + ":" + Player.Pos.Y);
                        break;
                    case "move":
                        if (Command.Length < 3) return;
                        MovePlayer(int.Parse(Command[1]), int.Parse(Command[2]), false);
                        break;

                    case "speak":
                        string toChat = "";
                        for (int i = 1; i < Command.Length; i++)
                        {
                            toChat += Command[i] + " ";
                        }
                        if (toChat.Contains("/s"))
                        {
                            toChat = toChat.Replace("/s", "");
                            SendShout(toChat);
                        }
                        else
                            SendChat(toChat);
                        break;

                    case "shout":
                        string shoutchat = "";
                        for (int i = 1; i < Command.Length; i++)
                        {
                            shoutchat += Command[i] + " ";
                        }
                        SendShout(shoutchat);
                        break;
                    case "ball":
                        string Response = "";
                        Random rand = new Random();
                        byte lolz = (byte)rand.Next(0, 14);
                        switch (lolz)
                        {
                            case 0: Response = "Uhm, don't think so."; break;
                            case 1: Response = "Yes, why doubt?"; break;
                            case 2: Response = "Sucks to be you... not answering that one."; break;
                            case 3: Response = "No, why bother..."; break;
                            case 4: Response = "Hehe, you're gay asking me that!"; break;
                            case 5: Response = "Fapfapfap!"; break;
                            case 6: Response = "Want in one hand, shit in the other, see what you have at the end of the day."; break;
                            case 7: Response = "Hey, gaymo. Shut up"; break;
                            case 8: Response = "Oi! Dick snot! Stop asking questions."; break;
                            case 9: Response = "Tell ya what, pay me 80 bucks, I'll get naked for ya"; break;
                            case 10: Response = "Seriously? You really want me to answer that?"; break;
                            case 11: Response = "Hey, go do the world a favor. Die in a fire"; break;
                            case 12: Response = "Csharp? lol whut?"; break;
                            case 13: Response = "I am the love child of Larkaros and Csharp"; break;
                            default:
                                Response = "Error in 8ball"; break;
                        }
                        SendChat(Response);
                        break;
                    default:
                        SendChat("Command not recognized, you fool.");
                        break;
                }
            }
            catch (Exception ex)
            {
                SendChat(ex.Message);
            }
        }

        void CreatePathingForm()
        {
            mPathCreator = new PathCreator(this);
            Application.Run(mPathCreator);
        }

        void HandleSingleNPCSpawn(Packet pPacket, Client pClient)
        {
            GameNPC mNpc = new GameNPC();
            mNpc.Info = new byte[38];
            mNpc.Pos = new Position(0, 0);
            if (!pPacket.ReadUShort(out mNpc.ID) ||
                !pPacket.ReadUShort(out mNpc.NPCID) ||
                !pPacket.ReadInt(out mNpc.Pos.X) ||
                !pPacket.ReadInt(out mNpc.Pos.Y) ||
                !pPacket.ReadSkip(1) ||
                !pPacket.ReadByte(out mNpc.Type) ||
                !pPacket.ReadBytes(mNpc.Info))
            {
                Log.WriteLine("Failed parsing individual NPC");
                return;
            }
            Player.AddNPC(mNpc);
            Log.WriteLine("NPC Spawn ID {0}", mNpc.NPCID);
        }

        void HandleRemoveMapObject(Packet pPacket, Client pClient)
        {
            ushort iID = 0;
            if (!pPacket.ReadUShort(out iID))
            {
                Log.WriteLine("Unspawn failed, could not read entity ID");
                return;
            }
            Player.GameObjects.Remove(iID);
        }

        void HandleMultiNPCSpawn(Packet pPacket, Client pClient)
        {
            byte Count = 0;
            if (!pPacket.ReadByte(out Count))
            {
                Log.WriteLine("Could not parse multi npc packet (empty).");
                return;
            }
            for (byte i = 0; i < Count; i++)
            {
                GameNPC mNpc = new GameNPC();   
                mNpc.Info = new byte[38];
                mNpc.Pos = new Position(0, 0);
                if (!pPacket.ReadUShort(out mNpc.ID) ||
                    !pPacket.ReadUShort(out mNpc.NPCID) ||
                    !pPacket.ReadInt(out mNpc.Pos.X) ||
                    !pPacket.ReadInt(out mNpc.Pos.Y) ||
                    !pPacket.ReadSkip(1) ||
                    !pPacket.ReadByte(out mNpc.Type) ||
                    !pPacket.ReadBytes(mNpc.Info))
                {
                    Log.WriteLine("Failed parsing individual NPC");
                    return;
                }
                Player.AddNPC(mNpc);
                UpdateWarpers();
               // Log.WriteLine("NPC Spawn ID {0}", mNpc.NPCID);
            }
        }

        void UpdateWarpers()
        {
            if (Player == null) return;
            List<GameNPC> Warpers = new List<GameNPC>();
            foreach (var x in Player.GameObjects)
            {
                if (x.Value.GetType() != typeof(GameNPC)) continue;
                if (((GameNPC)x.Value).Type == 1)
                    Warpers.Add((GameNPC)x.Value);
            }
            if (cmbWarpPoints.InvokeRequired)
            {
                cmbWarpPoints.Invoke(new MethodInvoker(delegate { cmbWarpPoints.Items.Clear(); cmbWarpPoints.Tag = Warpers; }));
            }
            else
            {
                cmbWarpPoints.Items.Clear();
                cmbWarpPoints.Tag = Warpers;
            }
            foreach (GameNPC npc in Warpers)
            {
                if (cmbWarpPoints.InvokeRequired)
                {
                    cmbWarpPoints.Invoke(new MethodInvoker(delegate
                    {
                        cmbWarpPoints.Items.Add(npc.ID.ToString() + " - " + System.Text.Encoding.ASCII.GetString(npc.Info).Replace("\0", ""));
                        cmbWarpPoints.SelectedIndex = 0;
                    }));
                }
                else
                {
                    cmbWarpPoints.Items.Add(npc.ID.ToString() + " - " + System.Text.Encoding.ASCII.GetString(npc.Info).Replace("\0", ""));
                    cmbWarpPoints.SelectedIndex = 0;
                }
            }
        }

        void HandleSinglePlayerSpawn(Packet pPacket, Client pClient)
        {
            byte mState = 0;
            GameCharacter nChar = new GameCharacter();
            nChar.Pos = new Position(0, 0);
            if (!pPacket.ReadUShort(out nChar.ID) ||
                !pPacket.ReadPaddedString(out nChar.Name, 16) ||
                !pPacket.ReadInt(out nChar.Pos.X) ||
                !pPacket.ReadInt(out nChar.Pos.Y) ||
                !pPacket.ReadSkip(1) || //
                !pPacket.ReadByte(out mState) ||
                !pPacket.ReadSkip(97))
            {
                Log.WriteLine("Error parsing characters onmap specific data.");
                return;
            }
            nChar.State = (CharacterState)mState;
            Log.WriteLine("SpawnPlayer {0} - {1}", nChar.Name, nChar.ID);
            Player.AddCharacter(nChar);
        }

        void HandleMultiplePlayerSpawn(Packet pPacket, Client pClient)
        {
            byte CharCount = 0;
            if (!pPacket.ReadByte(out CharCount))
            {
                Log.WriteLine("Could not read character onmap list.");
                return;
            }

            byte mState = 0;
            for (byte i = 0; i < CharCount; i++)
            {
                GameCharacter nChar = new GameCharacter();
                nChar.Pos = new Position(0, 0);
                if (!pPacket.ReadUShort(out nChar.ID) ||
                    !pPacket.ReadPaddedString(out nChar.Name, 16) ||
                    !pPacket.ReadInt(out nChar.Pos.X) ||
                    !pPacket.ReadInt(out nChar.Pos.Y) ||
                    !pPacket.ReadSkip(1) || //
                    !pPacket.ReadByte(out mState) ||
                    !pPacket.ReadSkip(97))
                {
                    Log.WriteLine("Error parsing characters onmap specific data.");
                    return;
                }
                nChar.State = (CharacterState)mState;
                Log.WriteLine("SpawnPlayer {0} - {1}", nChar.Name, nChar.ID);
                Player.AddCharacter(nChar);
            }
        }

        void HandleInventory(Packet pPacket, Client pClient)
        {
            if (Player == null) return;
            byte ItemCount = 0;
            byte InvType = 0; // 0x09 = inventory; 0x08 = equip; 0x0c = house
            if (!pPacket.ReadByte(out ItemCount) || !pPacket.ReadByte(out InvType))
            {
                pClient.Disconnect();
                return;
            }

            byte EntryLen = 0;
            for (byte i = 0; i < ItemCount; i++)
            {
                InventoryItem pItem = new InventoryItem();
                if (!pPacket.ReadByte(out EntryLen) || !pPacket.ReadByte(out pItem.Slot) || !pPacket.ReadSkip(1) || !pPacket.ReadUShort(out pItem.ID))
                {
                    Log.WriteLine("Failed to read inv 0x{0}", InvType.ToString("X2"));
                    return;
                }
               pItem.Info = new byte[EntryLen - 4];
                if(!pPacket.ReadBytes(pItem.Info)){
                    Log.WriteLine("Could not parse info for item {0} - Type 0x{1}", pItem.ID, InvType.ToString("x2"));
                    return;
                }
                Player.AddItem(InvType, pItem);
                ItemInfo inf = DataProvider.GetItemByID(pItem.ID);
                if (inf == null)
                    continue;
                if (inf.Type != ItemType.Equip && inf.MaxCount > 1 && pItem.Info.Length >= 1 && InvType == 0x09)
                    pItem.Count = pItem.Info[0];
                Log.WriteLine("Inv: {0} (Amount: {1})", inf.Name, pItem.Count);
            }
        }

        void HandleGameInfo(Packet pPacket, Client pClient)
        {
            Player = new Character();
            if (!pPacket.ReadInt(out Player._ID) ||
                !pPacket.ReadPaddedString(out Player._Name, 16) ||
                !pPacket.ReadByte(out Player._Slot) ||
                !pPacket.ReadByte(out Player._Level) ||
                !pPacket.ReadULong(out Player._Exp) ||
                !pPacket.ReadSkip(4) ||
                !pPacket.ReadUShort(out Player._HPStones) ||
                !pPacket.ReadUShort(out Player._SPStones) ||
                !pPacket.ReadInt(out Player._MaxHP) ||
                !pPacket.ReadInt(out Player._MaxSP) ||
                !pPacket.ReadInt(out Player._Fame) ||
                !pPacket.ReadULong(out Player._Money) ||
                !pPacket.ReadPaddedString(out Player._Map, 12))
            {
                Log.WriteLine("Could not parse player data.");
                pClient.Disconnect();
                return;
            }

            int X = 0;
            int Y = 0;
            if (!pPacket.ReadInt(out X) || !pPacket.ReadInt(out Y) || !pPacket.ReadSkip(1)) //pos + rotation
            {
                Log.WriteLine("Could not parse player position.");
                pClient.Disconnect();
                return;
            }
            Player.Pos = new Position(X, Y);

            if (!pPacket.ReadByte(out Player._iSTR) ||
                !pPacket.ReadByte(out Player._iEND) ||
                !pPacket.ReadByte(out Player._iDEX) ||
                !pPacket.ReadByte(out Player._iINT) ||
                !pPacket.ReadByte(out Player._iSPR))
            {
                Log.WriteLine("Could not parse player stats.");
                pClient.Disconnect();
                return;
            }
            Log.WriteLine("Character parsed successfully!");

            if (grpMisc.InvokeRequired)
            {
                grpMisc.Invoke(new MethodInvoker(delegate { grpMisc.Enabled = true; }));
            }
            else
                grpMisc.Enabled = true;

            if (grpStats.InvokeRequired)
            {
                grpStats.Invoke(new MethodInvoker(delegate { grpStats.Enabled = true; }));
            }
            else
                grpStats.Enabled = true;
            UpdateStats();
        }

        #endregion

        #region World
        void HandleWorldPacket(Packet pPacket, Client pClient)
        {
            switch (pPacket.mOpcode)
            {
                case 0x0c09:
                    byte ErrorKey = 0;
                    if (pPacket.ReadByte(out ErrorKey))
                    {
                        Log.WriteLine("Server returned error {0}", ErrorKey.ToString("X2"));
                    }
                    break;

                case 0x0c14:
                    HandleCharList(pPacket, pClient);
                    break;

                case 0x0804:
                    pClient.SendPacket(new Packet(0x0805)); //pong
                    break;

                case 0x080e:
                    //no fkin idea...
                    break;

                case 0x1003:
                    HandleGameIP(pPacket, pClient);
                    break;

                case 0x6402: //WorldMessage (Titles etc)
                    HandleGameMessage(pPacket, pClient);
                    break;

                case 0x200d:
                    HandleWhisper(pPacket, pClient);
                    break;

                default:
                    Log.WriteLine("WORLD Received packet 0x{0}", pPacket.mOpcode.ToString("X4"));
                    break;

            }
        }

        void HandleGameMessage(Packet pPacket, Client pClient)
        {
            byte mType = 0;
            byte mLen = 0;
            string Message = "";
            if (!pPacket.ReadByte(out mType) || !pPacket.ReadByte(out mLen) || !pPacket.ReadPaddedString(out Message, mLen))
            {
                Log.WriteLine("Could not parse WorldMessage.");
                return;
            }
            Log.WriteLine(Message);
        }

        void HandleGameIP(Packet pPacket, Client pClient)
        {
            string GameIP = "";
            ushort GamePort = 0;
            if (!pPacket.ReadPaddedString(out GameIP, 16) || !pPacket.ReadUShort(out GamePort))
            {
                Log.WriteLine("Could not read GameIP.");
                pClient.Disconnect();
                return;
            }
            ConnectToGame(GameIP, GamePort);
        }

        void ConnectToGame(string IP, ushort Port)
        {
            if (Player != null)
                Player = null;
            GameClient = new Client(IP, Port);
            GameClient.OnConnect += new Client.PassClient(lol_OnConnect);
            GameClient.OnDisconnect += new Client.PassClient(lol_OnDisconnect);
            GameClient.OnPacket += new Client.PassPacket(lol_OnPacket);
            GameClient.Connect();
        }

        void HandleCharList(Packet pPacket, Client pClient)
        {
            LoginClient.Disconnect(false);

            if (grpCharacters.InvokeRequired)
            {
                grpCharacters.Invoke(new MethodInvoker(delegate { grpCharacters.Enabled = true; }));
            }
            else
                grpCharacters.Enabled = true;

            ushort CharlistKey = 0;
            byte CharCount = 0;
            if (!pPacket.ReadUShort(out CharlistKey) || !pPacket.ReadByte(out CharCount))
            {
                pClient.Disconnect();
                return;
            }
            ClientKey = CharlistKey;

            LoginCharacters.Clear();
            for (byte i = 0; i < CharCount; i++)
            {
                LoginCharacter newChar = new LoginCharacter();
                if (!pPacket.ReadInt(out newChar.ID) ||
                    !pPacket.ReadPaddedString(out newChar.Name, 20) ||
                    !pPacket.ReadShort(out newChar.Level) ||
                    !pPacket.ReadByte(out newChar.Slot) ||
                    !pPacket.ReadPaddedString(out newChar.Map, 13) ||
                    !pPacket.ReadSkip(77))
                {
                    pClient.Disconnect();
                    Log.WriteLine("Error parsing character list.");
                    return;
                }
                LoginCharacters.Add(newChar);
            }
            UpdateCharList();

            pClient.SendPacket(new Packet(0x080D)); //unk?
            Log.WriteLine("Charlist received: {0} in list.", CharCount);
            if (CharCount == 0)
                Log.WriteLine("No character to select. Please create a character first.");
        }

        void UpdateCharList()
        {
            if (lstCharacters.InvokeRequired)
            {
                lstCharacters.Invoke(new MethodInvoker(delegate { lstCharacters.Items.Clear(); }));
            }
            else
                lstCharacters.Items.Clear();

            foreach (LoginCharacter mChar in LoginCharacters)
            {
                if (lstCharacters.InvokeRequired)
                {
                    lstCharacters.Invoke(new MethodInvoker(delegate
                    {
                        lstCharacters.Items.Add(mChar.Slot.ToString() + " - " + mChar.Name + " (lv." + mChar.Level.ToString() + " - " + mChar.Map + ")");
                        lstCharacters.SelectedIndex = 0;
                    }));
                }
                else
                {
                    lstCharacters.Items.Add(mChar.Slot.ToString() + " - " + mChar.Name + " (lv." + mChar.Level.ToString() + " - " + mChar.Map + ")");
                    lstCharacters.SelectedIndex = 0;
                }
            }
        }

        private void btnSelectCharacter_Click(object sender, EventArgs e)
        {
            grpCharacters.Enabled = false;
            if (lstCharacters.Items.Count == 0)
            {
                MessageBox.Show("Could not select character since there are none.");
                return;
            }
            byte SelectedKey = byte.Parse(lstCharacters.Text.Split(' ')[0]);
            CharacterName = LoginCharacters[SelectedKey].Name;

            Packet CharSelect = new Packet(0x1001);
            CharSelect.WriteByte(SelectedKey);
            WorldClient.SendPacket(CharSelect);
        }

        #endregion

        #region Login
        void HandleLoginPacket(Packet pPacket, Client pClient)
        {
            switch (pPacket.mOpcode)
            {
                case 0x0c03: //ClientVersion Response
                    PacketMerger mMerger = new PacketMerger();
                    mMerger.Append(pClient.GetEncryptedPacket(LoginPackets.LoginData(Username, Password)));
                    mMerger.Append(pClient.GetEncryptedPacket(LoginPackets.FileHash()));
                    pClient.SendRaw(mMerger.Dump(true));
                    break;

                case 0x0c0a:
                    HandleWorldList(pPacket, pClient);
                    break;

                case 0x0c0c:
                    HandleWorldIP(pPacket, pClient);
                    break;

                case 0x0c05: //no idea, always 01
                    break;

                case 0x0c09:
                    byte ErrorKey = 0;
                    if (pPacket.ReadByte(out ErrorKey))
                    {
                        Log.WriteLine("Server returned error {0}", ErrorKey.ToString("X2"));
                    }
                    break;

                case 0x0804: //ping?
                    pClient.SendPacket(new Packet(0x0805));
                    break;

                default:
                    Log.WriteLine("LOGIN Received packet 0x{0}", pPacket.mOpcode.ToString("X4"));
                    break;
            }
        }

        void HandleWorldIP(Packet pPacket, Client pClient)
        {
            byte lServerStatus = 0;
            string lWorldIP = "";
            ushort lWorldPort = 0;
            ushort lClientKey = 0;

            if (!pPacket.ReadByte(out lServerStatus) ||
                !pPacket.ReadPaddedString(out lWorldIP, 16) ||
                !pPacket.ReadUShort(out lWorldPort) ||
                !pPacket.ReadUShort(out lClientKey))
            {
                pClient.Disconnect();
                return;
            }
            ClientKey = lClientKey;
            WorldClient = new Client(lWorldIP, lWorldPort);
            WorldClient.OnConnect += new Client.PassClient(lol_OnConnect);
            WorldClient.OnDisconnect += new Client.PassClient(lol_OnDisconnect);
            WorldClient.OnPacket += new Client.PassPacket(lol_OnPacket);
            WorldClient.Connect();
        }

        void HandleWorldList(Packet pPacket, Client pClient)
        {
            string lAccountName = "";
            byte WorldCount = 0;
            if (!pPacket.ReadPaddedString(out lAccountName, 18) || !pPacket.ReadByte(out WorldCount))
            {
                pClient.Disconnect();
                return;
            }
            AccountName = lAccountName;
            SetTitle(BotName + " (" + AccountName + ")");

            if (WorldCount > 1)
            {
                if (grpWorld.InvokeRequired)
                {
                    grpWorld.Invoke(new MethodInvoker(delegate { grpWorld.Enabled = true; }));
                }
                else
                    grpWorld.Enabled = true;
            }

            string mName = "";
            for (byte i = 0; i < WorldCount; i++)
            {
                byte mKey = 0;

                byte mStatus = 0;
                if (!pPacket.ReadByte(out mKey) || !pPacket.ReadPaddedString(out mName, 16) || !pPacket.ReadByte(out mStatus))
                {
                    pClient.Disconnect();
                    return;
                }
                AddWorld(mKey, mName);
            }

            if (WorldCount == 1)
            {
                Log.WriteLine("Skipping world select - only 1 world available.");
                SetTitle(BotName + " (" + AccountName + " / " + mName + ")");
                Packet SelectWorld = new Packet(0x0c0b);
                SelectWorld.WriteByte(0);
                LoginClient.SendPacket(SelectWorld);
            }
        }

        void BuyIngredients(Recipe mRecipe)
        {
            Player.Buying = true;
            RequestShopData(365); //Elderine
        }

        void AddWorld(byte pKey, string pName)
        {
            if (lstWorldList.InvokeRequired)
            {
                lstWorldList.Invoke(new MethodInvoker(delegate { lstWorldList.Items.Add(pKey.ToString() + " - " + pName); lstWorldList.SelectedIndex = lstWorldList.Items.Count - 1; }));
            }
            else
            {
                lstWorldList.Items.Add(pKey.ToString() + " - " + pName);
                lstWorldList.SelectedIndex = lstWorldList.Items.Count - 1; 
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            Username = txtUsername.Text;
            Password = txtPassword.Text;

            grpLogin.Enabled = false;

            LoginClient = new Client(Conf.Host, 9010);
            LoginClient.OnConnect += new Client.PassClient(lol_OnConnect);
            LoginClient.OnDisconnect += new Client.PassClient(lol_OnDisconnect);
            LoginClient.OnPacket += new Client.PassPacket(lol_OnPacket);
            LoginClient.Connect();
        }

        private void btnSelectWorld_Click(object sender, EventArgs e)
        {
            grpWorld.Enabled = false;
            byte SelectedKey = byte.Parse(lstWorldList.Text.Split(' ')[0]);
            SetTitle(BotName + " (" + AccountName + " / " + lstWorldList.Text + ")");
            Packet SelectWorld = new Packet(0x0c0b);
            SelectWorld.WriteByte(SelectedKey);
            LoginClient.SendPacket(SelectWorld);
        }
        #endregion

        #region Misc
        public void SetTitle(string pText)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new MethodInvoker(delegate { this.Text = pText; }));
            }
            else
                this.Text = pText;
        }
        #endregion

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                tWriter.Close();
            }
            catch { }
        }

        private void btnWarp_Click(object sender, EventArgs e)
        {
            if (cmbWarpPoints.Items.Count <= 0) return;
            try
            {
                ushort ID = ushort.Parse(cmbWarpPoints.Text.Split(' ')[0]);
                SelectEntity(ID);
                RequestEntityData(ID);
                StopMoving();

                Player.Warping = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void cmbStartProduce_Click(object sender, EventArgs e)
        {
            if (!cmbProduce.Enabled)
            {
                cmbProduce.Enabled = true;
                lblProduceStatus.Text = "Idle";
                Player.Producing = null;
                return;
            }

            if (cmbProduce.Items.Count <= 0)
            {
                MessageBox.Show("No produce skills learned yet.");
                return;
            }
            ushort recpid = ushort.Parse(cmbProduce.Text.Split(' ')[0]);
           Recipe recp =  DataProvider.GetRecipeByID(recpid);
           if (recp == null) return;
           Player.Producing = recp;
           lblProduceStatus.Text = "Producing " + recp.Product.Name;
           cmbProduce.Enabled = false;
           Player.AutoSell = chkAutoSell.Checked;
           CheckProduce();
        }

        void UpdateStats()
        {
            if (Player == null) return;
            lock (Player)
            {
                if (lblLevel.InvokeRequired)
                {
                    lblLevel.Invoke(new MethodInvoker(delegate { lblLevel.Text = "Level: " + Player.Level; }));
                }
                else
                    lblLevel.Text = "Level: " + Player.Level;

                if (lblMoney.InvokeRequired)
                {
                    lblMoney.Invoke(new MethodInvoker(delegate { lblMoney.Text = "Money: " + Player.Money; }));
                } else
                    lblMoney.Text = "Money: " + Player.Money;

                if (lblPos.InvokeRequired)
                {
                    lblPos.Invoke(new MethodInvoker(delegate { lblPos.Text = "Pos: " + Player.Pos.X + "x" + Player.Pos.Y + " (" + Player.Map + ")"; }));
                }
                else
                    lblPos.Text = "Pos: " + Player.Pos.X + "x" + Player.Pos.Y + " (" + Player.Map + ")";
            }
        }

        private void btnSettings_Click(object sender, EventArgs e)
        {
            frmConfig config = new frmConfig(this.Conf);
            config.ShowDialog();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }
    }
}
