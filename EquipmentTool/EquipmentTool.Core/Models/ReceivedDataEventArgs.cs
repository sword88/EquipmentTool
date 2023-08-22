using System;

namespace EquipmentTool.Core.Models
{
    public class ReceivedDataEventArgs : EventArgs
    {
        public string ReceiveString { get; set; }

        public object SecsTransfer { get; set; }
    }
}
