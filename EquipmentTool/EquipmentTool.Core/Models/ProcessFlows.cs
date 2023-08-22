using System.Collections.Generic;
using System.Xml.Serialization;

namespace EquipmentTool.Core.Models
{
    [XmlRoot("ProcessFlows", IsNullable = false)]
    public class ProcessFlows
    {
        private List<ProcessNode> processInfoList = new List<ProcessNode>();

        [XmlElement(ElementName = "Process", IsNullable = false)]
        public List<ProcessNode> ProcessInfoList
        {
            get
            {
                return this.processInfoList;
            }
            set
            {
                this.processInfoList = value;
            }
        }
    }
}
