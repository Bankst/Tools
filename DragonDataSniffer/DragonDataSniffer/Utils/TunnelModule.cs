using System;



public enum InitializationStage
{
    Metadata = 0,
    Settings = 1,
    DataStore = 2,
    Worker = 3,
    Clients = 4,
    Networking = 5
}

[AttributeUsage(AttributeTargets.Class, AllowMultiple = false, Inherited = false)]
public class TunnelModule : Attribute
{
    private readonly InitializationStage stageInternal;
    public InitializationStage InitializationStage { get { return this.stageInternal; } }

    public TunnelModule(InitializationStage initializationStage)
    {
        this.stageInternal = initializationStage;
    }
}

[AttributeUsage(AttributeTargets.Method, AllowMultiple = false, Inherited = false)]
public class InitializerMethodAttribute : Attribute { }

