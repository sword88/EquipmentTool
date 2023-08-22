using EquipmentTool.Core.Common;
using EquipmentTool.EQPSimulator;
using EquipmentTool.EQPTester;
using EquipmentTool.Services;
using EquipmentTool.Services.Interfaces;
using EquipmentTool.Views;
using Prism.Ioc;
using Prism.Modularity;
using System.IO;
using System.Windows;

namespace EquipmentTool
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App
    {
        protected override Window CreateShell()
        {
            return Container.Resolve<MainWindow>();
        }

        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterSingleton<IMessageService, MessageService>();
            containerRegistry.Register<IDialogHostService, DialogHostService>();
        }

        protected override void OnStartup(StartupEventArgs e)
        {
            log4net.Config.XmlConfigurator.ConfigureAndWatch(new FileInfo("log4net.config"));
            base.OnStartup(e);
        }

        protected override void ConfigureModuleCatalog(IModuleCatalog moduleCatalog)
        {
            moduleCatalog.AddModule<EQPSimulatorModule>();
            moduleCatalog.AddModule<EQPTesterModule>();
            base.ConfigureModuleCatalog(moduleCatalog);
        }

        protected override void OnInitialized()
        {
            var service = App.Current.MainWindow.DataContext as IConfigureService;
            if (service != null)
            {
                service.Configure();
            }
            base.OnInitialized();
        }
    }
}
