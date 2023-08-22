using Secs4Net;
using Secs4Net.Sml;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace EquipmentTool.Core.Common
{
    public class AtxSmlReader
    {
        private List<SecsMessage> _messages;

        private Dictionary<SecsMessage, string> _replyMessages;

        private string _sml;

        private int _line;

        public SecsMessage[] MessageDictionary
        {
            get
            {
                if (_messages == null)
                {
                    return null;
                }

                return _messages.ToArray();
            }
        }

        public AtxSmlReader()
        {
            _messages = new List<SecsMessage>();
            _line = 0;
        }

        public void Load(string filePath)
        {
            StreamReader streamReader = null;
            try
            {
                _replyMessages = null;
                _messages = new List<SecsMessage>();
                if (!File.Exists(filePath))
                {
                    throw new FileNotFoundException($"The given file path[{filePath}] was not found");
                }

                if (filePath.EndsWith(".sml", StringComparison.OrdinalIgnoreCase))
                {
                    streamReader = new StreamReader(filePath);
                    _messages = new List<SecsMessage>();
                    _line = 0;
                    ParseSmlContent(streamReader);
                }
                else
                {
                    throw new ArgumentException($"Unknown file extension[{Path.GetExtension(filePath)}]");
                }

                //_messages.Sort();
                if (_replyMessages != null)
                {
                    //foreach (SecsMessage key in _replyMessages.Keys)
                    //{
                    //    key.Reply = Message(_replyMessages[key], byReference: true);
                    //}
                }

                _replyMessages = null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (streamReader != null)
                {
                    streamReader.Dispose();
                    streamReader = null;
                }
            }
        }

        private void ParseSmlContent(StreamReader reader)
        {
            SecsMessage secsMessage = null;
            StringBuilder sb = new StringBuilder();
            checked
            {
                while (!reader.EndOfStream)
                {
                    _sml = reader.ReadLine();
                    _line++;
                    if (_sml.Length == 0)
                    {
                        continue;
                    }

                    sb.AppendLine(_sml);

                    if (_sml == ".")
                    {
                        secsMessage = sb.ToString().ToSecsMessage();
                        _messages.Add(secsMessage);
                        sb.Clear();
                    }
                    else
                    {
                        if (reader.EndOfStream)
                        {
                            throw new SecsException($"Missing the closing tag (.) of a SECS Message at line {_line}");
                        }
                    }

                }
            }
        }

    }
}
