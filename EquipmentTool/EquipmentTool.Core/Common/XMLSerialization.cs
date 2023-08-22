using System;
using System.IO;
using System.Text;
using System.Xml;
using System.Xml.Serialization;

namespace EquipmentTool.Core.Common
{
    public class XMLSerialization
    {
        public static T ReadXML<T>(string path)
        {
            try
            {
                using (StreamReader streamReader = new StreamReader(path))
                    return (T)new XmlSerializer(typeof(T)).Deserialize((TextReader)streamReader);
            }
            catch (Exception ex)
            {
                Log.Logger.Error((object)ex);
            }
            return default(T);
        }

        public static T ReadFromXMLString<T>(string xmlStr)
        {
            try
            {
                XmlSerializer xmlSerializer = new XmlSerializer(typeof(T));
                using (TextReader input = (TextReader)new StringReader(xmlStr))
                {
                    using (XmlReader xmlReader = XmlReader.Create(input))
                        return (T)new XmlSerializer(typeof(T)).Deserialize(xmlReader);
                }
            }
            catch
            {
                throw;
            }
        }

        public static void WriteXML<T>(string filePath, T Meta)
        {
            using (StreamWriter streamWriter = new StreamWriter(filePath))
            {
                new XmlSerializer(typeof(T)).Serialize((TextWriter)streamWriter, (object)Meta);
                streamWriter.Close();
            }
        }

        public static string WriteXMLToString<T>(T obj, bool omitXmlDeclaration)
        {
            XmlWriterSettings settings = new XmlWriterSettings();
            settings.Indent = true;
            settings.OmitXmlDeclaration = omitXmlDeclaration;
            settings.Encoding = (Encoding)new UTF8Encoding(false);
            MemoryStream memoryStream = new MemoryStream();
            XmlWriter xmlWriter = XmlWriter.Create((Stream)memoryStream, settings);
            XmlSerializerNamespaces namespaces = new XmlSerializerNamespaces();
            namespaces.Add(string.Empty, string.Empty);
            new XmlSerializer(typeof(T)).Serialize(xmlWriter, (object)obj, namespaces);
            return Encoding.UTF8.GetString(memoryStream.ToArray());
        }

        public static void WriteXML<T>(
          string path,
          T obj,
          bool omitXmlDeclaration,
          bool removeDefaultNamespace)
        {
            using (XmlWriter xmlWriter = XmlWriter.Create(path, new XmlWriterSettings()
            {
                OmitXmlDeclaration = omitXmlDeclaration,
                Indent = true
            }))
            {
                XmlSerializerNamespaces namespaces = new XmlSerializerNamespaces();
                if (removeDefaultNamespace)
                    namespaces.Add(string.Empty, string.Empty);
                new XmlSerializer(typeof(T)).Serialize(xmlWriter, (object)obj, namespaces);
            }
        }
    }
}
