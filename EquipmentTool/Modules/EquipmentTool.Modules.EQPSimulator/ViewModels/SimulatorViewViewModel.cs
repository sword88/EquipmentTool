using EquipmentTool.Core.Common;
using EquipmentTool.Core.Models;
using EquipmentTool.Core.Mvvm;
using EquipmentTool.Services.Interfaces;
using Microsoft.Extensions.Options;
using Microsoft.Win32;
using Newtonsoft.Json;
using Prism.Commands;
using Prism.Events;
using Prism.Ioc;
using Prism.Services.Dialogs;
using Secs4Net;
using Secs4Net.Sml;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace EquipmentTool.EQPSimulator.ViewModels
{
    public class SimulatorViewViewModel : NavigationViewModelBase
    {
        private readonly IDialogHostService dialog;
        private readonly IEventAggregator aggregator;
        private EqpActionAndVidsConfig _allEqpActionsAndVids = new EqpActionAndVidsConfig();
        private ProcessFlows _eqpProcessFlows = new ProcessFlows();

        private SecsGem? _secsGem;
        private HsmsConnection _connection;
        private ISecsGemLogger _logger;
        private readonly BindingList<PrimaryMessageWrapper> recvBuffer = new();
        private CancellationTokenSource _cancellationTokenSource = new();

        public object lockobject = new object();

        public AtxSmlReader sml = new AtxSmlReader();
        private string _initialDirectory = string.Empty;

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
        /// <summary>
        /// 模式(主动/被动)
        /// </summary>
        private bool _isActive = false;
        /// <summary>
        /// 模式(主动/被动)
        /// </summary>
        public bool IsActive
        {
            get { return _isActive; }
            set { _isActive = value;RaisePropertyChanged(); }
        }

        private bool _isSelect = false;
        /// <summary>
        /// 机台状态
        /// </summary>
        public bool IsSelect
        {
            get { return _isSelect; }
            set { _isSelect = value; RaisePropertyChanged(); }
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
        /// IP信息
        /// </summary>
        private string _ipAddress = "127.0.0.1";
        /// <summary>
        /// IP信息
        /// </summary>
        public string IpAddress
        {
            get { return _ipAddress; }
            set { _ipAddress = value; RaisePropertyChanged(); }
        }
        /// <summary>
        /// Port信息
        /// </summary>
        private string _portNum = "5005";
        /// <summary>
        /// Port信息
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

        private List<string> _processNoList;
        public List<string> ProcessNoList
        {
            get { return _processNoList; }
            set { _processNoList = value; RaisePropertyChanged(); }
        }

        private List<string> _eqpActionList;

        public List<string> EqpActionList
        {
            get { return _eqpActionList; }
            set { _eqpActionList = value; RaisePropertyChanged(); }
        }

        private bool _isConnected = true;
        public bool IsConnected
        {
            get { return _isConnected; }
            set { _isConnected = value; RaisePropertyChanged(); }
        }
        private bool _isDisConnected = false;
        public bool IsDisConnected
        {
            get { return _isDisConnected; }
            set { _isDisConnected = value; RaisePropertyChanged(); }
        }

        private string _eqpCurrentBehaviorName;
        public string EqpCurrentBehaviorName
        {
            get { return _eqpCurrentBehaviorName; }
            set { _eqpCurrentBehaviorName = value; RaisePropertyChanged(); }
        }

        private string _stipID;
        public string StripID
        {
            get { return _stipID; }
            set { _stipID = value; RaisePropertyChanged(); }
        }
        private string _waferID;
        public string WaferID
        {
            get { return _waferID; }
            set { _waferID = value; RaisePropertyChanged(); }
        }

        private int _stripCol = 0;
        public int StripCol
        {
            get { return _stripCol; }
            set { _stripCol = value; BondDieCount = StripCol * StripRow; RaisePropertyChanged(); }
        }

        private int _stipRow = 0;
        public int StripRow
        {
            get { return _stipRow; }
            set { _stipRow = value; BondDieCount = StripCol * StripRow; RaisePropertyChanged(); }
        }

        private int _bondDieCount = 0;
        public int BondDieCount
        {
            get { return _bondDieCount; }
            set { _bondDieCount = value; RaisePropertyChanged(); }
        }

        private string _message;
        public string Message
        {
            get { return _message; }
            set { SetProperty(ref _message, value); }
        }

        private ObservableCollection<SecsLibraryTree> _secsLibrary = new ObservableCollection<SecsLibraryTree>();
        public ObservableCollection<SecsLibraryTree> SecsLibrary
        {
            get { return _secsLibrary; }
            set { _secsLibrary = value; RaisePropertyChanged(); }
        }

        /// <summary>
        /// Nodes节点
        /// </summary>
        private ObservableCollection<SecsLibraryTree> _nodes;
        /// <summary>
        /// Nodes节点
        /// </summary>
        public ObservableCollection<SecsLibraryTree> Nodes
        {
            get {  return _nodes; }
            set { _nodes = value; RaisePropertyChanged(); }
        }

        private ObservableCollection<string> _communType;

        public ObservableCollection<string> CommunType
        {
            get { return _communType; }
            set { _communType = value; RaisePropertyChanged(); }
        }

        //EQP Model
        private ObservableCollection<string> _eqpModels;

        public ObservableCollection<string> EqpModels
        {
            get { return _eqpModels; }
            set { _eqpModels = value; RaisePropertyChanged(); }
        }

        private string _currentEqpType = string.Empty;

        public string CurrentEqpType
        {
            get { return _currentEqpType; }
            set
            {
                _currentEqpType = value;
                try
                {
                    LoadEqpActionsAndVids();
                    EqpActionList = _allEqpActionsAndVids.EQPSimulatorActionListByType
                        .FirstOrDefault<EqpTypeInfo>((Func<EqpTypeInfo, bool>)(i => i.EqpType.Equals(this.CurrentEqpType)))
                        .EqpActionList.Select<EqpActionInfo, string>((Func<EqpActionInfo, string>)(c => c.EqpActionName))
                        .ToList<string>();
                }
                catch (Exception ex)
                {
                    Log.Logger.Error((object)ex);
                }
                RaisePropertyChanged();
            }
        }

        private string _currentSecsHost;

        public string CurrentSecsHost
        {
            get { return _currentSecsHost; }
            set { _currentSecsHost = value; RaisePropertyChanged(); }
        }

        private ManualResetEvent _threadMre = new ManualResetEvent(true);
        public ManualResetEvent ThreadMre
        {
            get { return _threadMre; }
            set { _threadMre = value; }
        }

        private List<Thread> _threadList = new List<Thread>();
        public List<Thread> ThreadList
        {
            get { return _threadList; }
            set { _threadList = value; }
        }

        public DelegateCommand<string> ConnectCommand { get; private set; }
        public DelegateCommand SendCommand { get; private set; }
        public DelegateCommand SettingCommand { get; private set; }
        public DelegateCommand LoadCommand { get; private set; }
        public DelegateCommand SaveCommand { get; private set; }
        public DelegateCommand SaveAsCommand { get; private set; }
        public DelegateCommand<string> RunCommand { get; private set; }
        public DelegateCommand AutoBondCommand { get; private set; }

        public EqpTypeInfo CurrentEqpActionsAndVids = new EqpTypeInfo();

        public event EventHandler<ReceivedDataEventArgs> DataReceivedEvent;

        public SimulatorViewViewModel(IContainerProvider containerProvider, IMessageService messageService,
            IDialogHostService dialog, IEventAggregator aggregator) :
            base(containerProvider)
        {
            Message = messageService.GetMessage();
            this.dialog = dialog;
            this.aggregator = aggregator;
            Init();
        }

        private void Init()
        {
            LogShown.RecordLog("Init Machine Simulator", LogLevel.Info);
            CommunType = new ObservableCollection<string>();
            EqpModels = new ObservableCollection<string>();
            Nodes = new ObservableCollection<SecsLibraryTree>();

            ConnectCommand = new DelegateCommand<string>(Connect);
            SendCommand = new DelegateCommand(Send);
            RunCommand = new DelegateCommand<string>(Run);
            AutoBondCommand = new DelegateCommand(AutoBond);
            SettingCommand = new DelegateCommand(Setting);
            LoadCommand = new DelegateCommand(Load);
            SaveCommand = new DelegateCommand(Save);
            SaveAsCommand = new DelegateCommand(SaveAs);

            LoadEqpActionsAndVids();
            GetCommunType();
            GetEQPModels();
            LoadConnectionSetup();
            CurrentEqpActionsAndVids = _allEqpActionsAndVids.EQPSimulatorActionListByType.FirstOrDefault<EqpTypeInfo>((Func<EqpTypeInfo, bool>)(i => i.EqpType.Equals(CurrentEqpType)));
            EqpActionList = CurrentEqpActionsAndVids.EqpActionList.Select<EqpActionInfo, string>((Func<EqpActionInfo, string>)(c => c.EqpActionName)).ToList<string>();
            _eqpProcessFlows = LoadProcessFlow();
            ProcessNoList = _eqpProcessFlows.ProcessInfoList.Select<ProcessNode, string>((Func<ProcessNode, string>)(c => c.Name)).ToList<string>();

            _logger = new DeviceLogger();
        }

        private void Load()
        {
            try
            {
                int id = 1;
                SecsLibrary.Clear();
                OpenFileDialog dialog = new OpenFileDialog();
                dialog.Title = "Load Library";
                dialog.Multiselect = false;
                dialog.CheckFileExists = true;
                dialog.CheckPathExists = true;
                dialog.InitialDirectory = _initialDirectory;
                dialog.Filter = "SML File(*.sml)|*.sml";
                if(dialog.ShowDialog() == true)
                {
                    _initialDirectory = Path.GetDirectoryName(dialog.FileName);
                    sml.Load(dialog.FileName);
                    LogShown.RecordLog($"Load Library {dialog.FileName}", LogLevel.Info);


                    SecsLibraryTree ztree = new SecsLibraryTree();
                    ztree.Name = Path.GetFileName(dialog.FileName);
                    ztree.Id = id;
                    ztree.PId = 0;

                    foreach (var item in sml.MessageDictionary.ToList())
                    {
                        id++;
                        SecsLibraryTree secs = new SecsLibraryTree();
                        secs.Name = item.Name;
                        secs.Id = id;
                        secs.PId = 1;
                        secs.Message = item;                              
                        Nodes.Add(secs);
                    }

                    ztree.Children = GetNodes(Nodes,1);
                    SecsLibrary.Add(ztree);
                }
                
            }
            catch(Exception ex)
            {
                LogShown.RecordLog($"Load Library {ex.Message}", LogLevel.Error);
            }
            finally
            {

            }
        }

        private ObservableCollection<SecsLibraryTree> GetNodes(ObservableCollection<SecsLibraryTree> nodes,int pid)
        {
            var mainNode = nodes.Where(x=>x.PId == pid).ToList();
            var otherNode = nodes.Where(x=>x.PId != pid).ToList();
            ObservableCollection<SecsLibraryTree> main = new ObservableCollection<SecsLibraryTree>();
            ObservableCollection<SecsLibraryTree> others = new ObservableCollection<SecsLibraryTree>();
            otherNode.ForEach(x=>others.Add(x));
            
            foreach(var item in mainNode)
            {
                item.Children = GetNodes(others, item.Id);
            }
            
            mainNode.ForEach(x=>main.Add(x));

            return main;
        }

        private void Save()
        {
            try
            {
                if (string.IsNullOrEmpty(_initialDirectory))
                {
                    SaveAs();
                }
                else
                {
                    LogShown.RecordLog($"Save Library successfuly.", LogLevel.Info);
                }
            }
            catch(Exception ex)
            {
                LogShown.RecordLog($"Save As Library Failed : {ex.Message} ", LogLevel.Error);
            }

        }

        private void SaveAs()
        {
            try
            {
                SaveFileDialog dialog = new SaveFileDialog();
                dialog.Title = "Save As Library";
                dialog.AddExtension = true;
                dialog.OverwritePrompt = true;
                dialog.InitialDirectory = _initialDirectory;
                dialog.Filter = "SML File(*.sml)|*.sml";
                if(dialog.ShowDialog() == true)
                {
                    LogShown.RecordLog($"Save As Library {dialog.FileName} successfuly.", LogLevel.Info);
                }

            }
            catch(Exception ex)
            {
                LogShown.RecordLog($"Save As Library Failed : {ex.Message} ", LogLevel.Error);
            }
        }

        private void ConnectStateHandler()
        {
            _connection.ConnectionChanged += async delegate
            {
                LogShown.RecordLog($"机台状态：【{_connection?.State}】", LogLevel.Info);

                if(_connection?.State == Secs4Net.ConnectionState.Selected)
                {
                    IsSelect = true;
                }
                else
                {
                    IsSelect = false;
                }

                await DataReceivedHandler();
            };
        }

        private async Task DataReceivedHandler()
        {
            try
            {
                if (_secsGem is null || _connection?.State != Secs4Net.ConnectionState.Selected)
                {
                    LogShown.RecordLog("未连接机台", LogLevel.Error);
                    //return;
                }
                else
                {
                    if(sml.MessageDictionary.Length == 0)
                    {
                        LogShown.RecordLog($"Please load SECS Library", LogLevel.Error);
                        return;
                    }

                    await foreach (var e in _secsGem.GetPrimaryMessageAsync(_cancellationTokenSource.Token))
                    {
                        LogShown.RecordLog($"{e.PrimaryMessage.ToSml()}", LogLevel.Info);

                        if (e.PrimaryMessage.F.ToString() == "0")
                        {
                            var S9F7 = new SecsMessage(9, 7)
                            {
                                Name = "S9F7",
                                SecsItem = Secs4Net.Item.B(0X00)
                            };
                            LogShown.RecordLog($"{S9F7.ToSml()}", LogLevel.Info);
                            await e.TryReplyAsync(S9F7);
                        }
                        else
                        {
                            SecsMessage snfx = sml.MessageDictionary.Where
                                (x => x.S == e.PrimaryMessage.S && x.F.ToString() == (int.Parse(e.PrimaryMessage.F.ToString()) + 1).ToString())
                                .FirstOrDefault();
                            if(snfx == null)
                            {
                                LogShown.RecordLog($"Unkown Event S{e.PrimaryMessage.S}F{int.Parse(e.PrimaryMessage.F.ToString()) + 1} in SECS Library", LogLevel.Error);
                                var SxFx = new SecsMessage(e.PrimaryMessage.S, 0)
                                {
                                    Name = $"S{e.PrimaryMessage.S}F0",
                                    SecsItem = Secs4Net.Item.B(0X00)
                                };
                                LogShown.RecordLog($"{SxFx.ToSml()}", LogLevel.Info);
                                await e.TryReplyAsync(SxFx);
                            }
                            else
                            {
                                LogShown.RecordLog($"{snfx.ToSml()}", LogLevel.Info);
                                await e.TryReplyAsync(snfx);
                            }
                        }                        
                    }
                }
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
            }

        }

        private async void Setting()
        {
            DialogParameters param = new DialogParameters();

            var dialogResult = await dialog.ShowDialogAsync("SimuConfigView", param);
            if (dialogResult.Result == ButtonResult.OK)
            {
                try
                {
                    UpdateLoading(true);
                    
                    EqpConnection = dialogResult.Parameters.GetValue<Connection>("Value");
                    if (EqpConnection != null)
                    {
                        LogShown.RecordLog("New settings have been applied!", LogLevel.Info);
                    }
                }
                catch (Exception ex)
                {
                    Log.Logger.Error(ex.Message);
                }
                finally
                {
                    UpdateLoading(false);
                }
            }
        }

        /// <summary>
        /// 连接断开
        /// </summary>
        /// <param name="obj">操作</param>
        private async void Connect(string obj)
        {
            try
            {
                if (obj == "Connect")
                {
                    var options = Options.Create(new SecsGemOptions
                    {
                        IsActive = IsActive,
                        IpAddress = IpAddress,
                        Port = int.Parse(PortNum),
                        SocketReceiveBufferSize = 65535,
                        DeviceId = (ushort)DeviceId,
                    });

                    _connection = new HsmsConnection(options, _logger);
                    _secsGem = new SecsGem(options, _connection, _logger);

                    _ = _connection.StartAsync(_cancellationTokenSource.Token);

                    IsConnected = false;
                    IsDisConnected = true;
                }
                else
                {

                    if (!_cancellationTokenSource.IsCancellationRequested)
                    {
                        _cancellationTokenSource.Cancel();
                        _cancellationTokenSource.Dispose();
                    }

                    if (_connection is not null)
                    {
                        await _connection.DisposeAsync();
                    }
                    _secsGem?.Dispose();
                    _cancellationTokenSource = new CancellationTokenSource();

                    _secsGem = null;

                    IsSelect = false;
                    IsConnected = true;
                    IsDisConnected = false;
                }

                _ = Task.Run(() =>
                {
                    ConnectStateHandler();
                });


            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
            }
        }
        /// <summary>
        /// Send
        /// </summary>
        private async void Send()
        {

            try
            {
                if (_secsGem is null || _connection?.State != Secs4Net.ConnectionState.Selected)
                {
                    LogShown.RecordLog("未连接机台", LogLevel.Error);
                    return;
                }

                CurrentEqpActionsAndVids = _allEqpActionsAndVids.EQPSimulatorActionListByType.FirstOrDefault<EqpTypeInfo>((Func<EqpTypeInfo, bool>)(i => i.EqpType.Equals(CurrentEqpType)));
                ThreadMre.WaitOne();
                MessageTrans messageTrans = new MessageTrans();
                messageTrans.TranName = EqpCurrentBehaviorName;
                EqpActionInfo eqpActionInfo = CurrentEqpActionsAndVids.EqpActionList.FirstOrDefault<EqpActionInfo>((Func<EqpActionInfo, bool>)(i => i.EqpActionName.ToUpper().Equals(EqpCurrentBehaviorName.ToUpper())));
                if (eqpActionInfo == null)
                {
                    LogShown.RecordLog(CurrentEqpType + "未定义行为：" + EqpCurrentBehaviorName + ",请在EQPReportsDefine.xml文件中定义！", LogLevel.Error);
                    return;
                }

                if (EqpCurrentBehaviorName.ToUpper() == "StripMapUpload".ToUpper())
                {
                    if (StripCol == 0 || StripRow == 0)
                    {
                        LogShown.RecordLog("请输入Strip的行列数！", LogLevel.Error);
                    }
                    if (BondDieCount == 0)
                    {
                        BondDieCount = StripCol * StripRow;
                    }

                }
                else if (Regex.IsMatch(eqpActionInfo.StreamFuncion, "S[\\d]{1,2}F[\\d]{1,2}"))
                {
                    LogShown.RecordLog($"DVLA:'{eqpActionInfo.StreamFuncion}' W\r\n" + eqpActionInfo.EqpActionStr, LogLevel.Info);
                    StringBuilder builder = new StringBuilder();
                    char[] result;
                    using (StreamReader reader = File.OpenText("StandardDefault.sml"))
                    {
                        result = new char[reader.BaseStream.Length];
                        await reader.ReadAsync(result, 0, (int)reader.BaseStream.Length);
                    }

                    foreach (char c in result)
                    {
                        builder.Append(c);
                    }

                    LogShown.RecordLog($"{builder.ToString()}", LogLevel.Info);
                    var reply = await _secsGem.SendAsync(builder.ToString().ToSecsMessage(), _cancellationTokenSource.Token);
                }

                //_secsGem.SendAsync(null);
            }
            catch (Exception ex)
            {
                LogShown.RecordLog(ex.Message, LogLevel.Error);
                Log.Logger.Error($"Sending {ex}");
            }

        }

        /// <summary>
        /// Run
        /// </summary>
        /// <param name="obj"></param>
        private async void Run(string obj)
        {
            switch (obj.ToUpper())
            {
                case "RUN":
                    break;
                case "STOP":
                    break;
                case "RESET":
                    break;
            }
        }

        /// <summary>
        /// AutoBond
        /// </summary>
        private void AutoBond()
        {

        }

        private void GetCommunType()
        {
            CommunType.Clear();
            CommunType.Add("SECS");
        }

        private void GetEQPModels()
        {
            EqpModels.Clear();
            foreach (var item in _allEqpActionsAndVids.EQPSimulatorActionListByType.Select((Func<EqpTypeInfo, string>)(c => c.EqpType)).ToList<string>())
            {
                EqpModels.Add(item.ToString());
            }
        }
        /// <summary>
        /// 
        /// </summary>
        private void LoadEqpActionsAndVids()
        {
            try
            {
                Log.Logger.Info("加载EqpActionsAndVids.json...");
                _allEqpActionsAndVids = new EqpActionAndVidsConfig();
                _allEqpActionsAndVids = JsonConvert.DeserializeObject<EqpActionAndVidsConfig>(File.ReadAllText(Path.Combine(Directory.GetCurrentDirectory(), "EqpActionsAndVids.json")));
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
            }
        }
        /// <summary>
        /// 加载连接信息
        /// </summary>
        private void LoadConnectionSetup()
        {
            try
            {
                EqpConnection = XMLSerialization.ReadXML<Connection>(Path.Combine(Directory.GetCurrentDirectory(), "ConnectionSetup.xml"));
                DeviceId = _eqpConnection.SecsConnection.DeviceID;
                ConnectMode = EqpConnection.SecsConnection.ConnectionMode;
                if (EqpConnection.SecsConnection.ConnectionMode.ToUpper() == "PASSIVE")
                {
                    IpAddress = EqpConnection.SecsConnection.NetworkAddressLocal;
                    PortNum = EqpConnection.SecsConnection.NetworkPortLocal;
                    IsActive = false;
                }
                else
                {
                    IpAddress = EqpConnection.SecsConnection.NetworkAddressRemote;
                    PortNum = EqpConnection.SecsConnection.NetworkPortRemote;
                    IsActive = true;
                }
                CurrentEqpType = EqpConnection.EQPModel;
                CurrentSecsHost = EqpConnection.SecsHost;
                //sml.Load("StandardDefault.sml");
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
            }
        }

        /// <summary>
        /// 保存连接信息
        /// </summary>
        private void SaveConnectionSetup()
        {
            try
            {
                XMLSerialization.WriteXML<Connection>(Path.Combine(Directory.GetCurrentDirectory(), "ConnectionSetup.xml"), EqpConnection, true, true);
            }
            catch (Exception ex)
            {
                Log.SecsLogger.Error((object)ex);
            }
        }

        /// <summary>
        /// 加载流程
        /// </summary>
        /// <returns></returns>
        private ProcessFlows LoadProcessFlow()
        {
            try
            {
                return XMLSerialization.ReadXML<ProcessFlows>(Path.Combine(Directory.GetCurrentDirectory(), "ProcessFlows.xml"));
            }
            catch (Exception ex)
            {
                Log.Logger.Error(ex);
                return (ProcessFlows)null;
            }
        }
    }
}
