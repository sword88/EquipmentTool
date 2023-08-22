using EquipmentTool.Core.Common;
using EquipmentTool.Core.Models;
using Prism.Commands;
using Prism.Events;
using Prism.Ioc;
using Prism.Mvvm;
using Prism.Services.Dialogs;
using System.IO;
using System.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Media.Imaging;
using System.Windows.Media;
using System.Windows;
using MaterialDesignThemes.Wpf;

namespace EquipmentTool.Modules.EQPSimulator.ViewModels
{
    public class SimuConfigViewModel : BindableBase, IDialogHostAware
    {
        private readonly IEventAggregator aggregator;
        private EqpActionAndVidsConfig _allEqpActionsAndVids = new EqpActionAndVidsConfig();
        public SimuConfigViewModel(IContainerProvider containerProvider)
        {
            this.aggregator = containerProvider.Resolve<IEventAggregator>();
            init();
        }

        public string DialogHostName { get; set; } = "Root";
        public DelegateCommand SaveCommand { get; set; }
        public DelegateCommand CancelCommand { get; set; }
        public DelegateCommand<object> ScreenShotCommand { get; set; }
        /// <summary>
        /// 对话框打开事件
        /// </summary>
        /// <param name="parameters"></param>
        public void OnDialogOpend(IDialogParameters parameters)
        {
            if (parameters.ContainsKey("Value"))
            { }
        }

        /// <summary>
        /// 初始化
        /// </summary>
        private async void init()
        {
            SaveCommand = new DelegateCommand(save);
            CancelCommand = new DelegateCommand(cancel);
            ScreenShotCommand = new DelegateCommand<object>(screenShot);

            LoadConnectionSetup();
        }

        /// <summary>
        /// 设备连接信息XML
        /// </summary>
        private Connection _eqpConnection = new Connection();
        /// <summary>
        /// 设备连接信息XML
        /// </summary>
        public Connection EqpConnection
        {
            get { return this._eqpConnection; }
            set { this._eqpConnection = value; RaisePropertyChanged(); }
        }

        #region 属性

        public List<string> ConnectModeList
        {
            get { return new List<string> { "Active".ToUpper(),"Passive".ToUpper() }; }            
        }

        /// <summary>
        /// Connect Mode
        /// </summary>
        private string _connectMode = "Active".ToUpper();
        /// <summary>
        /// Connect Mode
        /// </summary>
        public string ConnectMode
        {
            get { return _connectMode; }
            set { _connectMode = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// Local IP信息
        /// </summary>
        private string _ipAddress = "127.0.0.1";
        /// <summary>
        /// Local IP信息
        /// </summary>
        public string IpAddress
        {
            get { return _ipAddress; }
            set { _ipAddress = value; RaisePropertyChanged(); }
        }
        /// <summary>
        /// Local Port信息
        /// </summary>
        private string _portNum = "5005";
        /// <summary>
        /// Local Port信息
        /// </summary>
        public string PortNum
        {
            get { return _portNum; }
            set { _portNum = value; RaisePropertyChanged(); }
        }
        /// <summary>
        /// DeviceID
        /// </summary>
        private int _deviceId = new Random().Next();
        /// <summary>
        /// DeviceID
        /// </summary>
        public int DeviceId
        {
            get { return _deviceId; }
            set { _deviceId = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// Remote IP信息
        /// </summary>
        private string _remoteIpAddress = "127.0.0.1";
        /// <summary>
        /// Remote IP信息
        /// </summary>
        public string RemoteIpAddress
        {
            get { return _remoteIpAddress; }
            set { _remoteIpAddress = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// Remote Port信息
        /// </summary>
        private string _remotePortNum = "5005";
        /// <summary>
        /// Remote Port信息
        /// </summary>
        public string RemotePortNum
        {
            get { return _remotePortNum; }
            set { _remotePortNum = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// T3 Timeout
        /// </summary>
        private int _t3 = 45;
        /// <summary>
        /// T3 Timeout
        /// </summary>
        public int T3
        {
            get { return _t3; }
            set { _t3 = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// T5 Timeout
        /// </summary>
        private int _t5 = 10;
        /// <summary>
        /// T5 Timeout
        /// </summary>
        public int T5
        {
            get { return _t5; }
            set { _t5 = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// T6 Timeout
        /// </summary>
        private int _t6 = 5;
        /// <summary>
        /// T6 Timeout
        /// </summary>
        public int T6
        {
            get { return _t6; }
            set { _t6 = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// T7 Timeout
        /// </summary>
        private int _t7 = 10;
        /// <summary>
        /// T7 Timeout
        /// </summary>
        public int T7
        {
            get { return _t7; }
            set { _t7 = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// T8 Timeout
        /// </summary>
        private int _t8 = 5;
        /// <summary>
        /// T8 Timeout
        /// </summary>
        public int T8
        {
            get { return _t8; }
            set { _t8 = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// Link Test Timeout
        /// </summary>
        private int _linkTest = 60;
        /// <summary>
        /// Link Test Timeout
        /// </summary>
        public int LinkTest
        {
            get { return _linkTest; }
            set { _linkTest = value; RaisePropertyChanged(); }
        }

        #endregion


        private string _currentSecsHost;

        public string CurrentSecsHost
        {
            get { return _currentSecsHost; }
            set { _currentSecsHost = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// 加载连接信息
        /// </summary>
        private void LoadConnectionSetup()
        {
            try
            {
                EqpConnection = XMLSerialization.ReadXML<Connection>(Path.Combine(Directory.GetCurrentDirectory(), "ConnectionSetup.xml"));
                DeviceId = EqpConnection.SecsConnection.DeviceID;
                ConnectMode = EqpConnection.SecsConnection.ConnectionMode;
                IpAddress = EqpConnection.SecsConnection.NetworkAddressLocal;
                PortNum = EqpConnection.SecsConnection.NetworkPortLocal;
                RemoteIpAddress = EqpConnection.SecsConnection.NetworkAddressRemote;
                RemotePortNum = EqpConnection.SecsConnection.NetworkPortRemote;

                CurrentSecsHost = EqpConnection.SecsHost;
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
            }
        }
        /// <summary>
        /// 截图
        /// </summary>
        /// <param name="obj"></param>
        private void screenShot(object obj)
        {
            try
            {
                FrameworkElement element = obj as FrameworkElement;
                if (element == null) { aggregator.SendMessage("截图失败", "SimuConfigView"); return; }
                RenderTargetBitmap render = new RenderTargetBitmap((int)element.ActualWidth, (int)element.ActualHeight, 96, 96, PixelFormats.Pbgra32);
                render.Render(element);

                Clipboard.SetImage(BitmapFrame.Create(render));
                aggregator.SendMessage("截图成功", "SimuConfigView");
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex.Message);
            }

        }

        /// <summary>
        /// 保存连接信息
        /// </summary>
        private async void save()
        {
            try
            {
                EqpConnection.SecsConnection.DeviceID = DeviceId;
                EqpConnection.SecsConnection.ConnectionMode = ConnectMode;
                EqpConnection.SecsConnection.NetworkAddressLocal = IpAddress;
                EqpConnection.SecsConnection.NetworkPortLocal = PortNum;
                EqpConnection.SecsConnection.NetworkAddressRemote = RemoteIpAddress;
                EqpConnection.SecsConnection.NetworkPortRemote = RemotePortNum;
                EqpConnection.SecsHost = CurrentSecsHost;
                XMLSerialization.WriteXML<Connection>(Path.Combine(Directory.GetCurrentDirectory(), "ConnectionSetup.xml"), EqpConnection, true, true);

                //确定时,把编辑的实体返回并且返回OK
                DialogParameters param = new DialogParameters();
                param.Add("Value", EqpConnection);

                DialogHost.Close(DialogHostName, new DialogResult(ButtonResult.OK, param));
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
            }
        }

        /// <summary>
        /// 取消
        /// </summary>
        private void cancel()
        {
            if (DialogHost.IsDialogOpen(DialogHostName))
                DialogHost.Close(DialogHostName, new DialogResult(ButtonResult.No)); //取消返回NO告诉操作结束
        }
    }
}
