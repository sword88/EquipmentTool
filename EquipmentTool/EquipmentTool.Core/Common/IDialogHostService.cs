using Prism.Services.Dialogs;
using System.Threading.Tasks;

namespace EquipmentTool.Core.Common
{
    public interface IDialogHostService : IDialogService
    {
        Task<IDialogResult> ShowDialogAsync(string name, IDialogParameters parameters, string dialogHostName = "Root");
    }
}
