using EquipmentTool.Core.Mvvm;
using Prism.Events;
using Prism.Ioc;

namespace EquipmentTool.EQPTester.ViewModels
{
    public class TesterViewViewModel : NavigationViewModelBase
    {
        private string _message;
        public string Message
        {
            get { return _message; }
            set { SetProperty(ref _message, value); }
        }

        public TesterViewViewModel(IContainerProvider containerProvider, IEventAggregator eventAggregator)
            : base(containerProvider)
        {
            Message = "TesterView from EQPTester  Module";
        }
    }
}
