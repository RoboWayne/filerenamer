using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace FileRenamer
{
    class RRFile
    {
        public string OldName { get; set; }
        public string NewName { get; set; }
        public string FilePath { get; set; }
        public int Season { get; set; }
        public int Episode { get; set; }
        public string Extension { get; set; }

        public RRFile(string path)
        {
            if (!File.Exists(path)) return;
            FilePath = path;
            Extension = Path.GetExtension(path);
            OldName = Path.GetFileNameWithoutExtension(path);     
  
            
        }

        public void Rename(string newName, string newPath)
        {
            var season = "";
            var episode = "";
            if (Season < 10)
            {
                season = "0" + Season.ToString();
            }
            else
            {
                season = Season.ToString();
            }
            if (Episode < 10)
            {
                episode = "0" + Episode.ToString();
            }
            else
            {
                episode = Episode.ToString();
            }
            NewName = newName.Replace(@"{S}", season).Replace(@"{E}", episode);
            try
            {
                File.Move(FilePath, newPath + "\\" + NewName + Extension);
            }
            catch (Exception e)
            {
                MessageBox.Show(e.ToString());
            }
        }
    }
}
