using Secs4Net;
using Secs4Net.Json;
using Secs4Net.Sml;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;

namespace EquipmentTool.Core.Models
{
    public sealed class SecsMessageList : ObservableCollection<SecsMessage>
    {
        public SecsMessageList(string file) : base(File.OpenRead(file).ToSecsMessages()) { }

        public SecsMessage? this[byte s, byte f, string name] => this[s, f].FirstOrDefault(m => m.Name == name);

        public IEnumerable<SecsMessage> this[byte s, byte f] => this.Where(m => m.S == s && m.F == f);

        public SecsMessage? this[string name] => this.FirstOrDefault(m => m.Name == name);
    }
}
