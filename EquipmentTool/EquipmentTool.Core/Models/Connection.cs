using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    [XmlRoot("Connection", IsNullable = false)]
    public class Connection
    {
        private string eqpModel = string.Empty;
        private string secsHost = "Secs";
        private int enqueueDelayTimeMs = 20;
        private string esec2008BoxRs232 = "COM1,9600,8,None,1";
        private string esec2008BarCodeScanerRs232 = "COM2,9600,7,Even,1";
        private SecsConnectionConfig secsConnection = new SecsConnectionConfig();
        private VirtualComClass virtualComPort = new VirtualComClass();
        private MSMQClass mSMQ = new MSMQClass();
        private string processName;

        [XmlAttribute("EQPModel")]
        public string EQPModel
        {
            get
            {
                return this.eqpModel;
            }
            set
            {
                this.eqpModel = value;
            }
        }

        [XmlAttribute("SecsHost")]
        public string SecsHost
        {
            get
            {
                return this.secsHost;
            }
            set
            {
                this.secsHost = value;
            }
        }

        [XmlElement("ProcessName")]
        public string ProcessName
        {
            get
            {
                return this.processName;
            }
            set
            {
                this.processName = value;
            }
        }

        [XmlElement("EnqueueDelayTimeMs")]
        public int EnqueueDelayTimeMs
        {
            get
            {
                return this.enqueueDelayTimeMs;
            }
            set
            {
                this.enqueueDelayTimeMs = value;
            }
        }

        [XmlElement("Esec2008BoxRs232")]
        public string Esec2008BoxRs232
        {
            get
            {
                return this.esec2008BoxRs232;
            }
            set
            {
                this.esec2008BoxRs232 = value;
            }
        }

        [XmlElement("Esec2008BarCodeScanerRs232")]
        public string Esec2008BarCodeScanerRs232
        {
            get
            {
                return this.esec2008BarCodeScanerRs232;
            }
            set
            {
                this.esec2008BarCodeScanerRs232 = value;
            }
        }

        public SecsConnectionConfig SecsConnection
        {
            get
            {
                return this.secsConnection;
            }
            set
            {
                this.secsConnection = value;
            }
        }

        public VirtualComClass VirtualComPort
        {
            get
            {
                return this.virtualComPort;
            }
            set
            {
                this.virtualComPort = value;
            }
        }

        public MSMQClass MSMQ
        {
            get
            {
                return this.mSMQ;
            }
            set
            {
                this.mSMQ = value;
            }
        }
    }
}
