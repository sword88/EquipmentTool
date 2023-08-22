using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    public class SecsConnectionConfig
    {
        private string connectionMode = "PASSIVE";
        private string networkAddressRemote = "192.168.100.1";
        private string networkPortRemote = "5005";
        private string networkAddressLocal = "192.168.100.1";
        private string networkPortLocal = "5005";
        private int deviceID;

        [XmlAttribute]
        public int DeviceID
        {
            set
            {
                this.deviceID = value;
            }
            get
            {
                return this.deviceID;
            }
        }

        [XmlAttribute]
        public string ConnectionMode
        {
            set
            {
                this.connectionMode = value;
            }
            get
            {
                return this.connectionMode;
            }
        }

        [XmlAttribute("NetworkAddressRemote")]
        public string NetworkAddressRemote
        {
            get
            {
                return this.networkAddressRemote;
            }
            set
            {
                this.networkAddressRemote = value;
            }
        }

        [XmlAttribute("NetworkPortRemote")]
        public string NetworkPortRemote
        {
            get
            {
                return this.networkPortRemote;
            }
            set
            {
                this.networkPortRemote = value;
            }
        }

        [XmlAttribute("NetworkAddressLocal")]
        public string NetworkAddressLocal
        {
            get
            {
                return this.networkAddressLocal;
            }
            set
            {
                this.networkAddressLocal = value;
            }
        }

        [XmlAttribute("NetworkPortLocal")]
        public string NetworkPortLocal
        {
            get
            {
                return this.networkPortLocal;
            }
            set
            {
                this.networkPortLocal = value;
            }
        }
    }
}
