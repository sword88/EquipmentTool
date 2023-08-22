using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    public class VirtualComClass
    {
        private string TcpServerFlag = "false";
        private string TcpserverIPLocalReader = string.Empty;
        private string TcpserverPortLocalOfEsec2008BarCode = string.Empty;
        private string TcpserverIPLocalEsec2008BoxRs232 = string.Empty;
        private string TcpserverPortLocalEsec2008BoxRs232 = string.Empty;

        [XmlAttribute("EnableVirtualComPort")]
        public string EnableVirtualComPort
        {
            get
            {
                return this.TcpServerFlag;
            }
            set
            {
                this.TcpServerFlag = value;
            }
        }

        [XmlAttribute("VirtualComIPLocalEsec2008BarCodeScanerRs232")]
        public string TCPServerIPLocalOfEsec2008BarCode
        {
            get
            {
                return this.TcpserverIPLocalReader;
            }
            set
            {
                this.TcpserverIPLocalReader = value;
            }
        }

        [XmlAttribute("VirtualComPortLocalEsec2008BarCodeScanerRs232")]
        public string TCPServerPortLocalOfEsec2008BarCode
        {
            get
            {
                return this.TcpserverPortLocalOfEsec2008BarCode;
            }
            set
            {
                this.TcpserverPortLocalOfEsec2008BarCode = value;
            }
        }

        [XmlAttribute("VirtualIPLocalComEsec2008BoxRs232")]
        public string TCPServerIPLocalOfEsec2008BoxRs232
        {
            get
            {
                return this.TcpserverIPLocalEsec2008BoxRs232;
            }
            set
            {
                this.TcpserverIPLocalEsec2008BoxRs232 = value;
            }
        }

        [XmlAttribute("VirtualComPortLocalEsec2008BoxRs232")]
        public string TCPServerPortLocalOfEsec2008BoxRs232
        {
            get
            {
                return this.TcpserverPortLocalEsec2008BoxRs232;
            }
            set
            {
                this.TcpserverPortLocalEsec2008BoxRs232 = value;
            }
        }
    }
}
