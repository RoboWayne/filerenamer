using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.WindowsAPICodePack.Dialogs;
namespace FileRenamer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Folder folder = null;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnFindFolder_Click(object sender, RoutedEventArgs e)
        {
            //refactor to RR.Common
            var dlg = new CommonOpenFileDialog
            {
                Title = "Select Folder",
                IsFolderPicker = true,
                InitialDirectory = @"%UserProfile%\Desktop\",
                AddToMostRecentlyUsedList = false,
                AllowNonFileSystemItems = false
            };

            dlg.DefaultDirectory = dlg.InitialDirectory;
            dlg.EnsureFileExists = true;
            dlg.EnsurePathExists = true;
            dlg.EnsureReadOnly = false;
            dlg.EnsureValidNames = true;
            dlg.Multiselect = false;
            dlg.ShowPlacesList = true;

            if (dlg.ShowDialog() == CommonFileDialogResult.Ok)
            {
                folder = new Folder(dlg.FileName, TxtExcludedFiles.Text);
                TxtFolderLocation.Text = dlg.FileName;
                DataGridFileList.ItemsSource = folder.files;
            }

        }

        private void BtnRenameFiles_Click(object sender, RoutedEventArgs e)
        {
            var newFileName = TxtNewFileName.Text;
            if (folder == null)
            {
                MessageBox.Show("Umm..you haven't picked a folder yet!");
                return;
            }
            if (newFileName == "")
            {
                MessageBox.Show("Sorry. You have to have a new File Name! Shucks.");
                return;
            }
            if (Regex.IsMatch(newFileName, "{S}") && Regex.IsMatch(newFileName, "{E}"))
            {
                folder.RenameFiles(TxtNewFileName.Text, TxtNewFolderName.Text);
                MessageBox.Show("Done!");
            }
            else
            {
                MessageBox.Show(
                    "You have to include {S} and {E} in the New File Name so we know where to put the episode and season number!");
            }
       

        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
           ResetForm();

        }

        private void ResetForm()
        {
            folder = null;
            TxtExcludedFiles.Text = "";
            TxtFolderLocation.Text = "";
            TxtNewFileName.Text = "";
            TxtNewFolderName.Text = "";
            DataGridFileList.ItemsSource = null;
        }

        private void MenuItem_Click_1(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void MenuItem_Click_2(object sender, RoutedEventArgs e)
        {
            var obj=Assembly.GetExecutingAssembly().GetName().Version;
            string version= string.Format("Version {0}.{1}", obj.Major, obj.Minor);
            MessageBox.Show("File Renamer\n" +
                            "Developed by RoboWayne Software Development\n" +
                            "wayne@robowayne.com\n" +
                            version +
                            "\nCopyright 2014"
                );
        }
    }
}
