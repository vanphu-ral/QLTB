namespace MledNew2023.MVC.Models
{
    public class ErrorViewModel
    {
        public string? RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);
    }
    public class FileModel
    {
        public string? Name { get; set; }
        public string? DateCreated { get; set; }
        public string? Content { get; set; }
        public string? Size { get; set; }
    }
    public class FolderModel
    {
        public string? Name { get; set; }
        public string? DateCreated { get; set; }
    }
}