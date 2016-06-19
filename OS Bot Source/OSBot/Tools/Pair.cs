public struct Pair<p1, p2>
{
    public p1 First { get; set; }
    public p2 Second { get; set; }


    public Pair(p1 First, p2 Second)
        : this()
    {
        this.First = First;
        this.Second = Second;
    }
}
