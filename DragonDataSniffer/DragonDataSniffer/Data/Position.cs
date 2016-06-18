using System;

public struct Position
{
    public uint X { get; set; }
    public uint Y { get; set; }
    public byte Rotation { get; set; }
    public Position(uint X, uint Y)
        : this()
    {
        this.X = X;
        this.Y = Y;
    }
    public Position(uint X, uint Y, byte Rotation)
        : this()
    {
        this.X = X;
        this.Y = Y;
        this.Rotation = Rotation;
    }

    public static double GetDistance(Position Pos1, Position Pos2)
    {
        return GetDistance(Pos1.X, Pos2.X, Pos1.Y, Pos2.Y);
    }
    public static double GetDistance(uint x1, uint x2, uint y1, uint y2)
    {
        var dx = x2 - x1;
        var dy = y2 - y1;
        return Math.Sqrt((dx * dx) + (dy * dy));
    }
}