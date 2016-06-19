using System;
public enum AppStartStep : uint
{
    PreData = 0x000,
    Logic   = 1,
    GUI     = uint.MaxValue
}

[AttributeUsage(AttributeTargets.Method, AllowMultiple = true, Inherited = false)]
public sealed class AppStartMethod : Attribute
{
    public AppStartStep Step { get; private set; }
    public uint InnerStep { get; private set; }
    public AppStartMethod(AppStartStep Step, uint InnerStep = uint.MinValue)
    {
        this.Step = Step;
        this.InnerStep = InnerStep;
    }
}