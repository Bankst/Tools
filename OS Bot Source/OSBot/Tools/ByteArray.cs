using System;

public sealed class ByteArray
{
    public byte[] Buffer { get; private set; }
    public int Offset { get; private set; }
    public int Length { get; private set; }
    
    public ByteArray(byte[] Buffer): this(Buffer, 0, Buffer.Length)
    {
    }
    
    public ByteArray(byte[] Buffer, int Offset, int Length)
    {
        this.Buffer = Buffer;
        this.Offset = Offset;
        this.Length = Length;
    }
    
    public void Dispose()
    {
        Buffer = null;
    }
    
    ~ByteArray()
    {
        Dispose();
    }
    
    public bool Advance(int BufferLength)
    {
        Offset += BufferLength;
        Length -= BufferLength;
        return (Buffer.Length == BufferLength);
    }
}