using EquipmentTool.Core.Common;
using Prism.Events;
using Prism.Ioc;
using Prism.Regions;
using System;

namespace EquipmentTool.Core.Mvvm
{
    public class NavigationViewModelBase : ViewModelBase, INavigationAware, IConfirmNavigationRequest
    {
        private readonly IContainerProvider containerProvider;
        public readonly IEventAggregator eventAggregator;

        public NavigationViewModelBase(IContainerProvider containerProvider)
        {
            this.containerProvider = containerProvider;
            this.eventAggregator = containerProvider.Resolve<IEventAggregator>();
        }

        public virtual void ConfirmNavigationRequest(NavigationContext navigationContext, Action<bool> continuationCallback)
        {
            continuationCallback(true);
        }

        public virtual bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        public virtual void OnNavigatedFrom(NavigationContext navigationContext)
        {

        }

        public virtual void OnNavigatedTo(NavigationContext navigationContext)
        {

        }

        public void UpdateLoading(bool IsOpen)
        {
            eventAggregator.UpdateLoading(new UpdateModel() { IsOpen = IsOpen });
        }
    }
}
