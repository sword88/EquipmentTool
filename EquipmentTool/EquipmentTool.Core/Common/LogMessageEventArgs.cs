using System;

namespace EquipmentTool.Core.Common
{
    public class LogMessageEventArgs : EventArgs
    {
        public string message;
        public LogLevel level;
    }

    public enum LogLevel
    {
        Info,
        Warn,
        Error,
    }
}
