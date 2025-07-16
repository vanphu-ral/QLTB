using System.IO;

namespace MledNew2023.MVC.Models
{
    public class BaseServices
    {
        public virtual bool IsFileLocked(FileInfo file)
        {
            try
            {
                using (FileStream stream = file.Open(FileMode.Open, FileAccess.Read, FileShare.None))
                {
                    stream.Close();
                }
            }
            catch (IOException)
            {
                //the file is unavailable because it is:
                //still being written to
                //or being processed by another thread
                //or does not exist (has already been processed)
                return true;
            }

            //file is not locked
            return false;
        }
    }
    public class DataSelectOption
    {
        public string? opValue { get; set; }
        public string? opText { get; set; }
    }
}
