using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    public class MSMQClass
    {
        [XmlAttribute]
        public string HostName { get; set; }

        [XmlAttribute]
        public string ListenSubject { get; set; }

        [XmlAttribute]
        public string SendSubject { get; set; }

        [XmlAttribute]
        public string Network { get; set; }

        [XmlAttribute]
        public string Service { get; set; }

        [XmlAttribute]
        public string Daemon { get; set; }

        [XmlAttribute]
        public int TimeoutInterval { get; set; }

        [XmlAttribute]
        public int RetryLimit { get; set; }
    }
}
