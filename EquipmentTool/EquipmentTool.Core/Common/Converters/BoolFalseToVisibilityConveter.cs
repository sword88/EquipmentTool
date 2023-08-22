using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace EquipmentTool.Core.Common.Converters
{
    public class BooFalseToVisibilityConveter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && bool.TryParse(value.ToString(), out bool result))
            {
                if (result == false)
                    return Visibility.Visible;
            }
            return Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && bool.TryParse(value.ToString(), out bool result))
            {
                if (result == false)
                    return Visibility.Visible;
            }
            return Visibility.Collapsed;
        }
    }
}
