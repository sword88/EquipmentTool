using Prism.Events;

namespace EquipmentTool.Core.Common
{
    public class UpdateModel
    {
        public bool IsOpen { get; set; }
    }
    public class UpdateLoadingEvent : PubSubEvent<UpdateModel>
    {

    }
}
