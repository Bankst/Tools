using System;
using DragonDataSniffer.Object;


namespace DragonDataSniffer.Events
{
    public class MapEnterArgs 
    {
        public MapEnterArgs(MapObject pMapobject) {
            pObject = pMapobject;
        }

        public MapObject pObject { get;  private set; }
    }
}
