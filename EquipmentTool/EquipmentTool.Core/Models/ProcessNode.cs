using System.Collections.Generic;
using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    public class ProcessNode
    {
        private List<Behavior> behaviorLists = new List<Behavior>();
        [XmlAttribute("Name")]
        public string Name;
        private string waferID;
        private string stripRow;
        private string stripCol;
        private string strips;

        [XmlElement("WaferID")]
        public string WaferID
        {
            get
            {
                return this.waferID;
            }
            set
            {
                this.waferID = value;
            }
        }

        [XmlElement("StripRow")]
        public string StripRow
        {
            get
            {
                return this.stripRow;
            }
            set
            {
                this.stripRow = value;
            }
        }

        [XmlElement("StripCol")]
        public string StripCol
        {
            get
            {
                return this.stripCol;
            }
            set
            {
                this.stripCol = value;
            }
        }

        [XmlElement("Strips")]
        public string Strips
        {
            get
            {
                return this.strips;
            }
            set
            {
                this.strips = value;
            }
        }

        [XmlElement("behavior")]
        public List<Behavior> BehaviorLists
        {
            get
            {
                return this.behaviorLists;
            }
            set
            {
                this.behaviorLists = value;
            }
        }
    }
}
