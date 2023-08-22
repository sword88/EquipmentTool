using Prism.Mvvm;

namespace EquipmentTool.Core.Common
{
    /// <summary>
    /// 菜单
    /// </summary>
    public class MenuBar : BindableBase
    {
        /// <summary>
        /// 图标
        /// </summary>
        private string icon;
        /// <summary>
        /// 图标
        /// </summary>
        public string Icon
        {
            get { return icon; }
            set { icon = value; }
        }

        /// <summary>
        /// 标题
        /// </summary>
        private string title;
        /// <summary>
        /// 标题
        /// </summary>
        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        /// <summary>
        /// 命名空间
        /// </summary>
        private string nameSpace;
        /// <summary>
        /// 命名空间
        /// </summary>
        public string NameSpace
        {
            get { return nameSpace; }
            set { nameSpace = value; }
        }
    }
}
