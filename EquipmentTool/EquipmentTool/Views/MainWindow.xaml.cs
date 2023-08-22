using EquipmentTool.Core.Common;
using EquipmentTool.Core.Views;
using Prism.Events;
using Prism.Services.Dialogs;
using System.Windows;
using System.Windows.Input;

namespace EquipmentTool.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly IDialogHostService dialogHostService;
        public MainWindow(IEventAggregator aggregator)
        {
            InitializeComponent();

            aggregator.RegisterMessage(arg =>
            {
                Snackbar.MessageQueue.Enqueue(arg);
            });

            aggregator.Register(arg =>
            {
                DialogHost.IsOpen = arg.IsOpen;
                if (DialogHost.IsOpen)
                {
                    DialogHost.DialogContent = new ProgressView();
                }
            });

            btnMin.Click += (s, e) => { this.WindowState = WindowState.Minimized; };
            btnMax.Click += (s, e) =>
            {
                if (this.WindowState == WindowState.Maximized)
                {
                    this.WindowState = WindowState.Normal;
                }
                else
                {
                    this.WindowState = WindowState.Maximized;
                }
            };
            btnClose.Click += async (s, e) =>
            {
                var dialogResult = dialogHostService.Question("提示", "确认退出系统?");
                if (dialogResult.Result.Result != ButtonResult.OK)
                {
                    return;
                }
                this.Close();
            };
            ColorZone.MouseMove += (s, e) =>
            {
                if (e.LeftButton == MouseButtonState.Pressed)
                {
                    this.DragMove();
                }
            };
            ColorZone.MouseDoubleClick += (s, e) =>
            {
                if (this.WindowState == WindowState.Normal)
                {
                    this.WindowState = WindowState.Maximized;
                }
                else
                {
                    this.WindowState = WindowState.Normal;
                }
            };
        }
    }
}
