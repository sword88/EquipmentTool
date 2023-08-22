using Prism.Mvvm;
using Secs4Net;
using System.Collections.ObjectModel;

namespace EquipmentTool.Core.Models
{
    public class SecsLibraryTree : BindableBase
    {
        public string Name { get; set; }

        public int Id { get; set; }

        public int PId { get; set; }

        public SecsMessage Message { get; set; }

        public ObservableCollection<SecsLibraryTree> Children { get; set; } 

        public SecsLibraryTree() 
        {
            Children = new ObservableCollection<SecsLibraryTree>();
        }
    }
}
