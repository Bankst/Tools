using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer.Chat
{
    [TunnelModule(InitializationStage.Clients)]
    public sealed class CommandHandler
    {
        public static CommandHandler Instance { get; private set; }
        public delegate void Command(params string[] param);
        private readonly Dictionary<string, CommandInfo> commands = new Dictionary<string, CommandInfo>();

        public CommandHandler() //use this for handling commands :D
        {
            LoadCommands();
            Log.WriteLine(LogLevel.Info, "{0} command(s) registered.", commands.Count);
        }
        [InitializerMethod]
        public static bool Load()
        {
            try
            {
                Instance = new CommandHandler();
                return true;
            }
            catch (Exception ex)
            {
                Log.WriteLine(LogLevel.Exception, "CommandHandler exception: {0}", ex.ToString());
                return false;
            }
        }
        public void LoadCommands()
        {
            RegisterCommand("!Note", Note );
        }
        public void Note(params string[] param)
        {
            if(param.Length > 0)
            {
                Manager.GameClientManager.Instance.DropMessage(param[1]);
            }
        }
        public void RegisterCommand(string command, Command function, params string[] param)
        {
            if (commands.ContainsKey(command))
            {
                Log.WriteLine(LogLevel.Warn, "{0} already registered as a command.", command);
                return;
            }
            CommandInfo info = new CommandInfo(command.ToLower(), function,  param);
            commands.Add(command.ToLower(), info);
        }

        public string[] GetCommandParams(string command)
        {
            CommandInfo info;
            if (commands.TryGetValue(command, out info))
            {
                return info.Parameters;
            }
            else return null;
        }

        public CommandStatus ExecuteCommand(string[] command)
        {
            CommandInfo info;
            if (commands.TryGetValue(command[0].ToLower(), out info))
            {
            
                    try
                    {
                        info.Function(command);
                        return CommandStatus.Done;
                    }
                    catch (Exception ex)
                    {
                        string wholeCommand = string.Join(" ", command);
                        Log.WriteLine(LogLevel.Exception, "Exception while handling command '{0}': {1}", wholeCommand, ex.ToString());
                        return CommandStatus.Error;
                    }
                
            }
            else return CommandStatus.NotFound;
        }

    }
}
