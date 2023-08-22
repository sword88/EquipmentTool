using System.Collections.Generic;

namespace EquipmentTool.Core.Models
{
    /// <summary>
    /// 机台行为&VIDS配置
    /// </summary>
    public class EqpActionAndVidsConfig
    {
        public IList<EqpTypeInfo> EQPSimulatorActionListByType { get; set; } = new List<EqpTypeInfo>();
    }
}
