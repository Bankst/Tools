using System;

namespace OSBot.Logic.Worlds
{
    public sealed class World
    {
        public byte ID { get; private set; }
        public string Name { get; private set; }
        public WorldStatus Status { get; private set; }
        public World(byte ID, string Name, WorldStatus Status)
        {
            this.ID = ID;
            this.Name = Name;
            this.Status = Status;
        }
    }
}