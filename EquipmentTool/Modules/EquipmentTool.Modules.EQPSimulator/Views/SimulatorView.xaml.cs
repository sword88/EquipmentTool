using EquipmentTool.Core.Common;
using System;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;

namespace EquipmentTool.EQPSimulator.Views
{
    /// <summary>
    /// Interaction logic for ViewA.xaml
    /// </summary>
    public partial class SimulatorView : UserControl
    {
        public SimulatorView()
        {
            InitializeComponent();
            LogShown.LogMessageEvent += new EventHandler<LogMessageEventArgs>(this.LogMessage);
        }

        private void LogMessage(object sender, LogMessageEventArgs e)
        {
            try
            {
                this.LogParagraph.Dispatcher.Invoke((Action)(() =>
                {
                    string str = string.Empty;
                    if (this.LogParagraph.Inlines.Count != 0)
                        str = "\n";
                    Run run;
                    if (e.level == LogLevel.Error)
                    {
                        Log.Logger.Error((object)e.message);
                        run = new Run(string.Format("{0}{1} - Error -  {2}", (object)str, (object)DateTime.Now, (object)e.message));
                        run.Foreground = (Brush)Brushes.Red;
                    }
                    else if (e.level == LogLevel.Warn)
                    {
                        Log.Logger.Warn((object)e.message);
                        run = new Run(string.Format("{0}{1} - Warn  - {2}", (object)str, (object)DateTime.Now, (object)e.message));
                        run.Foreground = (Brush)Brushes.Brown;
                    }
                    else
                    {
                        Log.Logger.Info((object)e.message);
                        run = new Run(string.Format("{0}{1} - Info  - {2}", (object)str, (object)DateTime.Now, (object)e.message));
                        run.Foreground = (Brush)Brushes.Green;
                    }
                    this.LogParagraph.Inlines.Add((Inline)run);
                    if (this.LogParagraph.Inlines.Count > 100)
                        this.LogParagraph.Inlines.Remove(this.LogParagraph.Inlines.FirstInline);
                    this.LogRichTextBox.ScrollToEnd();
                }));
            }
            catch (Exception ex)
            {
                Log.Logger.Error((object)ex.Message);
            }
        }
    }
}
