using log4net;
using log4net.Appender;
using log4net.Layout;
using log4net.Repository.Hierarchy;
using System;
using System.IO;

namespace EquipmentTool.Core.Common
{
    /// <summary>
    /// 日志
    /// </summary>
    public class Log
    {
        //系统默认
        public static readonly ILog Logger = LogManager.GetLogger("SYSTEM");
        //SECS
        public static readonly ILog SecsLogger = LogManager.GetLogger("SECS");
        public static readonly ILog BoxLogger = LogManager.GetLogger("BOX");
        public static ILog CreateCustomLogger(ILog defaultLogger, string fileName)
        {
            try
            {
                ILog newLogger = LogManager.Exists(fileName);
                if (newLogger == null)
                {
                    newLogger = LogManager.GetLogger(fileName);
                    Logger defaultInternalLogger = (Logger)defaultLogger.Logger;
                    RollingFileAppender defaultAppender = new RollingFileAppender();
                    if (defaultInternalLogger.Appenders.Count > 0)
                    {
                        AppenderCollection.IAppenderCollectionEnumerator enumerator = defaultInternalLogger.Appenders.GetEnumerator(); ;
                        try
                        {
                            while (enumerator.MoveNext())
                            {
                                IAppender appender = enumerator.Current;
                                if (appender is RollingFileAppender)
                                {
                                    defaultAppender = (RollingFileAppender)appender;
                                    break;
                                }
                            }
                        }
                        finally
                        {
                            if (enumerator is IDisposable disposable)
                            {
                                disposable.Dispose();
                            }
                        }
                    }
                    PatternLayout patternLayout = new PatternLayout(((PatternLayout)defaultAppender.Layout).ConversionPattern);
                    patternLayout.ActivateOptions();
                    RollingFileAppender newAppender = new RollingFileAppender();
                    newAppender.AppendToFile = defaultAppender.AppendToFile;
                    newAppender.RollingStyle = defaultAppender.RollingStyle;
                    newAppender.MaxSizeRollBackups = defaultAppender.MaxSizeRollBackups;
                    newAppender.MaximumFileSize = defaultAppender.MaximumFileSize;
                    newAppender.DatePattern = defaultAppender.DatePattern;
                    newAppender.Layout = patternLayout;
                    newAppender.StaticLogFileName = defaultAppender.StaticLogFileName;
                    newAppender.MaxSizeRollBackups = defaultAppender.MaxSizeRollBackups;
                    if (defaultAppender.LockingModel is FileAppender.MinimalLock)
                    {
                        newAppender.LockingModel = new FileAppender.MinimalLock();
                    }
                    else if (defaultAppender.LockingModel is FileAppender.ExclusiveLock)
                    {
                        newAppender.LockingModel = new FileAppender.ExclusiveLock();
                    }
                    else if (defaultAppender.LockingModel is FileAppender.InterProcessLock)
                    {
                        newAppender.LockingModel = new FileAppender.InterProcessLock();
                    }
                    newAppender.File = $"{Path.GetDirectoryName(defaultAppender.File)}\\{fileName}";
                    newAppender.ActivateOptions();
                    Logger newInternalLogger = (Logger)newLogger.Logger;
                    newInternalLogger.RemoveAllAppenders();
                    newInternalLogger.AddAppender(newAppender);
                    newInternalLogger.Level = defaultInternalLogger.Level;
                }

                return newLogger;
            }
            catch (Exception ex)
            {
                Logger.Error(ex.Message);
                return null;
            }
        }
    }
}
