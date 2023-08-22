using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    public class Behavior
    {
        private string timeDelayMs = "10000";
        private string stripID;
        private int stripIDNo;
        private string stripBehavior;
        private string bondDieCount;
        private bool isHostReply;

        [XmlIgnore]
        public string StripID
        {
            get
            {
                return this.stripID;
            }
            set
            {
                this.stripID = value;
            }
        }

        [XmlElement("StripID")]
        public int StripIDNo
        {
            get
            {
                return this.stripIDNo;
            }
            set
            {
                this.stripIDNo = value;
            }
        }

        [XmlElement("StripBehavior")]
        public string StripBehavior
        {
            get
            {
                return this.stripBehavior;
            }
            set
            {
                this.stripBehavior = value;
            }
        }

        [XmlElement("TimeDelayMs")]
        public string TimeDelayMs
        {
            get
            {
                return this.timeDelayMs;
            }
            set
            {
                this.timeDelayMs = value;
            }
        }

        [XmlElement("BondDieCount")]
        public string BondDieCount
        {
            get
            {
                return this.bondDieCount;
            }
            set
            {
                this.bondDieCount = value;
            }
        }

        [XmlIgnore]
        public bool IsHostReply
        {
            get
            {
                return this.isHostReply;
            }
            set
            {
                this.isHostReply = value;
            }
        }
    }
}
