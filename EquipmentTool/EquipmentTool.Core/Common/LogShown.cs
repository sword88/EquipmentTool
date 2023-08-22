using System;

namespace EquipmentTool.Core.Common
{
    public class LogShown
    {
        private static object lockHelper = new object();
        private static LogShown instance;

        public static LogShown InstanceSingleTon()
        {
            if (LogShown.instance == null)
            {
                lock (LogShown.lockHelper)
                {
                    if (LogShown.instance == null)
                        LogShown.instance = new LogShown();
                }
            }
            return LogShown.instance;
        }

        public static event EventHandler<LogMessageEventArgs> LogMessageEvent;

        public static void RecordLog(string message, LogLevel level)
        {
            LogShown.InstanceSingleTon();
            if (LogShown.LogMessageEvent == null)
                return;
            LogShown.LogMessageEvent((object)null, new LogMessageEventArgs()
            {
                message = message,
                level = level
            });
        }
    }
}
