using EquipmentTool.Core;
using EquipmentTool.Core.Common;
using Prism.Commands;
using Prism.Ioc;
using Prism.Mvvm;
using Prism.Regions;
using System.Collections.ObjectModel;

namespace EquipmentTool.ViewModels
{
    public class MainWindowViewModel : BindableBase, IConfigureService
    {
        private string _title = "CIM Tools";
        public string Title
        {
            get { return _title; }
            set { SetProperty(ref _title, value); }
        }

        private ObservableCollection<MenuBar> menuBars;
        public ObservableCollection<MenuBar> MenuBars
        {
            get { return menuBars; }
            set { menuBars = value; RaisePropertyChanged(); }
        }

        public DelegateCommand<MenuBar> NavigateCommand { get; private set; }
        public DelegateCommand GoBackCommand { get; private set; }
        public DelegateCommand GoForwardCommand { get; private set; }

        private readonly IContainerProvider containerProvider;
        private readonly IRegionManager regionManager;
        private IRegionNavigationJournal journal;

        public MainWindowViewModel(IContainerProvider containerProvider, IRegionManager regionManager)
        {
            MenuBars = new ObservableCollection<MenuBar>();
            NavigateCommand = new DelegateCommand<MenuBar>(Navigate);
            GoBackCommand = new DelegateCommand(() =>
            {
                if (journal != null && journal.CanGoBack)
                    journal.GoBack();
            });
            GoForwardCommand = new DelegateCommand(() =>
            {
                if (journal != null && journal.CanGoForward)
                    journal.GoForward();
            });
            this.containerProvider = containerProvider;
            this.regionManager = regionManager;
        }

        private void Navigate(MenuBar bar)
        {
            if (bar == null || string.IsNullOrEmpty(bar.NameSpace))
            {
                return;
            }

            regionManager.Regions[RegionNames.ContentRegion].RequestNavigate(bar.NameSpace, back =>
            {
                journal = back.Context.NavigationService.Journal;
            });
        }

        private void CreateMenuBar()
        {
            MenuBars.Add(new MenuBar() { Icon = "Home", Title = "首页", NameSpace = "ViewA" });
            MenuBars.Add(new MenuBar() { Icon = "Calendar", Title = "机台模拟器", NameSpace = "SimulatorView" });
            MenuBars.Add(new MenuBar() { Icon = "Email", Title = "机台测试器", NameSpace = "TesterView" });
            MenuBars.Add(new MenuBar() { Icon = "Calendar", Title = "SECS/GEM测试", NameSpace = "ViewA" });
            MenuBars.Add(new MenuBar() { Icon = "Cog", Title = "设置", NameSpace = "ViewA" });
        }

        public void Configure()
        {
            CreateMenuBar();
            regionManager.Regions[RegionNames.ContentRegion].RequestNavigate("SimulatorView");
        }
    }
}
