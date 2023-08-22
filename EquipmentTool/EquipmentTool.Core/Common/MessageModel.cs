using Prism.Events;

namespace EquipmentTool.Core.Common
{
    public class MessageModel
    {
        public string Filter { get; set; }
        public string Message { get; set; }
    }

    public class MessageEvent : PubSubEvent<MessageModel>
    {

    }
}
