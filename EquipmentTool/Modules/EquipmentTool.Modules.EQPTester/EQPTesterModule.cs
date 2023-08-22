using EquipmentTool.EQPTester.ViewModels;
using EquipmentTool.EQPTester.Views;
using Prism.Ioc;
using Prism.Modularity;

namespace EquipmentTool.EQPTester
{
    public class EQPTesterModule : IModule
    {
        public void OnInitialized(IContainerProvider containerProvider)
        {
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<TesterView, TesterViewViewModel>();
        }
    }
}