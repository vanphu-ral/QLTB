namespace MledNew2023.MVC.Models
{
    public class ReportDeviceOperationTime
    {
        public string? DayNum { get; set; }
        public decimal RunningTime { get; set; }
        public decimal StopTime { get; set; }
        public decimal OperationTime { get; set; }
    }
public class ReportDeviceStatus
    {
        public string? DayNum { get; set; }
        public decimal ValSUM { get; set; }
        public decimal ValGreen { get; set; }
        public decimal ValOrange { get; set; }
        public decimal ValRed { get; set; }
    }

}
