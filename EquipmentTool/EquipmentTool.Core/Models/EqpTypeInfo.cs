using System.Collections.Generic;

namespace EquipmentTool.Core.Models
{
    public class EqpTypeInfo
    {
        public string EqpType { get; set; }
        public StripMapInfo StripMap { get; set; } = new StripMapInfo();
        public IList<EqpActionInfo> EqpActionList { get; set; } = new List<EqpActionInfo>();
        public IList<VidInfo> VidList { get; set; } = new List<VidInfo>();
        public IList<ReportInfo> Report { get; set; } = new List<ReportInfo>();
    }
}
