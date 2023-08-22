using EquipmentTool.EQPSimulator.ViewModels;
using EquipmentTool.EQPSimulator.Views;
using EquipmentTool.Modules.EQPSimulator.ViewModels;
using EquipmentTool.Modules.EQPSimulator.Views;
using Prism.Ioc;
using Prism.Modularity;

namespace EquipmentTool.EQPSimulator
{
    [Module(OnDemand = true)]
    public class EQPSimulatorModule : IModule
    {
        public void OnInitialized(IContainerProvider containerProvider)
        {
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<SimulatorView, SimulatorViewViewModel>();
            containerRegistry.RegisterForNavigation<SimuConfigView, SimuConfigViewModel>();
        }
    }
}