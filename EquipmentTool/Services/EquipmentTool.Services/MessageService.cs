using EquipmentTool.Services.Interfaces;

namespace EquipmentTool.Services
{
    public class MessageService : IMessageService
    {
        public string GetMessage()
        {
            return "Hello from the Message Service";
        }
    }
}
