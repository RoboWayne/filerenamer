using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.IO;
using System.Windows;

namespace FileRenamer 
{
    class Folder
    {
        public string OldFolderName { get; set; }
        private string NewFileName { get; set; }
        private string ExcludedFiles { get; set; }
        public string NewFolderName { get; set; }
        private string Path { get; set; }
        public  Collection<RRFile> files = new Collection<RRFile>();

        public Folder(string path, string excludedFiles)
        {
            Path = path;
            ExcludedFiles = excludedFiles;

            try
            {
                var fileList = Directory.EnumerateFiles(Path);
                
                foreach (var file in fileList)
                {
                    var fileExtension = System.IO.Path.GetExtension(file);
                    if (fileExtension != null && Regex.IsMatch(excludedFiles, fileExtension)) continue;
                    files.Add(new RRFile(file));
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.ToString());
            }
        }

        public void RenameFiles(string newFileName, string newFolderName)
        {
            NewFileName = newFileName;
            NewFolderName = newFolderName;
            string newDirectory = Path + "\\" + NewFolderName;
            Directory.CreateDirectory(newDirectory);

            foreach (var file in files)
            {
                file.Rename(NewFileName, newDirectory);
            }

        }

    }
}
