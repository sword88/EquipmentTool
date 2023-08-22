using Secs4Net;
using Secs4Net.Sml;
using System;

namespace EquipmentTool.Core.Common
{
    public class DeviceLogger : ISecsGemLogger
    {
        public void MessageIn(SecsMessage msg, int id) => Log.SecsLogger.Info($"<-- [0x{id:X8}] {msg.ToSml()}");
        public void MessageOut(SecsMessage msg, int id) => Log.SecsLogger.Info($"--> [0x{id:X8}] {msg.ToSml()}");
        public void Debug(string msg) => Log.SecsLogger.Debug(msg);
        public void Info(string msg) => Log.SecsLogger.Info(msg);
        public void Warning(string msg) => Log.SecsLogger.Warn(msg);
        public void Error(string msg, SecsMessage? message, Exception? ex) => Log.SecsLogger.Error($"{ex}\n, {msg} {message}\n");
    }
}
