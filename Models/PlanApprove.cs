using System;

namespace MledNew2023.MVC.Models
{
    public class PlanApprove
    {
        public Int64 Id { get; set; }
        public string? PlanTable { get; set; }
        public string? FieldName { get; set; }
        public string? UserSignalture { get; set; }
        public string? PlanApproveName { get; set; }
        public string? UserPlanName { get; set; }
        public string? DatePlan { get; set; }
        public string? PlanStatusInfor { get; set; }
        public int IsMark { get; set; }
        public string? AvatarUserCreate { get; set; } //List<ImageUrl> 
        public string? AvatarUserView { get; set; }
        public string? TimeToolTip { get; set; }
        public string? TimeView { get; set; }
        public string? PlanNumber { get; set; }
        public string? NumberAju { get; set; }
        public string? PlanYear { get; set; }
        public string? PlanMonth { get; set; }
        public string? BranchId { get; set; }
}
    public class ImageUrl
    {
        public string? Url { get; set; }
    }
    public class PlanStatus
    {
        public int Id { get; set; }
        public string? FieldName { get; set; }
        public string? TimeCreated { get; set; }
        public string? IsAccept { get; set; }
        public string? Note { get; set; }
    }
}
