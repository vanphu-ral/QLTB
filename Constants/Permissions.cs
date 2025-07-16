using System.Collections.Generic;

namespace MledNew2023.MVC.Constants
{
    public static class Permissions
    {
        public static List<string> GeneratePermissionsForModule(string module)
        {
            return new List<string>()
        {
            $"Permissions.{module}.Create",
            $"Permissions.{module}.View",
            $"Permissions.{module}.Edit",
            $"Permissions.{module}.Delete",
        };
        }

        public static class Lists
        {
            public const string View = "Permissions.Lists.View";
            public const string Create = "Permissions.Lists.Create";
            public const string Edit = "Permissions.Lists.Edit";
            public const string Delete = "Permissions.Lists.Delete";
        }
        public static class Device
        {
            public const string View = "Permissions.Device.View";
            public const string Create = "Permissions.Device.Create";
            public const string Edit = "Permissions.Device.Edit";
            public const string Delete = "Permissions.Device.Delete";
        }
        public static class Supplie
        {
            public const string View = "Permissions.Supplie.View";
            public const string Create = "Permissions.Supplie.Create";
            public const string Edit = "Permissions.Supplie.Edit";
            public const string Delete = "Permissions.Supplie.Delete";
        }
        public static class User
        {
            public const string View = "Permissions.User.View";
            public const string Create = "Permissions.User.Create";
            public const string Edit = "Permissions.User.Edit";
            public const string Delete = "Permissions.User.Delete";
        }

        public static class Role
        {
            public const string View = "Permissions.Role.View";
            public const string Create = "Permissions.Role.Create";
            public const string Edit = "Permissions.Role.Edit";
            public const string Delete = "Permissions.Role.Delete";
        }

        public static class UserLogin
        {
            public const string View = "Permissions.UserLogin.View";
            public const string Create = "Permissions.UserLogin.Create";
            public const string Edit = "Permissions.UserLogin.Edit";
            public const string Delete = "Permissions.UserLogin.Delete";
        }

        public static class UserActive
        {
            public const string View = "Permissions.UserActive.View";
            public const string Create = "Permissions.UserActive.Create";
            public const string Edit = "Permissions.UserActive.Edit";
            public const string Delete = "Permissions.UserActive.Delete";
        }

        public static class Config
        {
            public const string View = "Permissions.Config.View";
            public const string Create = "Permissions.Config.Create";
            public const string Edit = "Permissions.Config.Edit";
            public const string Delete = "Permissions.Config.Delete";
        }
        public static class PlanDaily
        {
            public const string View = "Permissions.PlanDaily.View";
            public const string Create = "Permissions.PlanDaily.Create";
            public const string Edit = "Permissions.PlanDaily.Edit";
            public const string Delete = "Permissions.PlanDaily.Delete";
        }
        public static class PlanPeriodic
        {
            public const string View = "Permissions.PlanPeriodic.View";
            public const string Create = "Permissions.PlanPeriodic.Create";
            public const string Edit = "Permissions.PlanPeriodic.Edit";
            public const string Delete = "Permissions.PlanPeriodic.Delete";
        }
        public static class PlanOver
        {
            public const string View = "Permissions.PlanOver.View";
            public const string Create = "Permissions.PlanOver.Create";
            public const string Edit = "Permissions.PlanOver.Edit";
            public const string Delete = "Permissions.PlanOver.Delete";
        }
        public static class PlanSupplie
        {
            public const string View = "Permissions.PlanSupplie.View";
            public const string Create = "Permissions.PlanSupplie.Create";
            public const string Edit = "Permissions.PlanSupplie.Edit";
            public const string Delete = "Permissions.PlanSupplie.Delete";
        }
        public static class Target
        {
            public const string View = "Permissions.Target.View";
            public const string Create = "Permissions.Target.Create";
            public const string Edit = "Permissions.Target.Edit";
            public const string Delete = "Permissions.Target.Delete";
        }
        public static class Form
        {
            public const string View = "Permissions.Form.View";
            public const string Create = "Permissions.Form.Create";
            public const string Edit = "Permissions.Form.Edit";
            public const string Delete = "Permissions.Form.Delete";
        }
        public static class ErorrLog
        {
            public const string View = "Permissions.ErorrLog.View";
            public const string Create = "Permissions.ErorrLog.Create";
            public const string Edit = "Permissions.ErorrLog.Edit";
            public const string Delete = "Permissions.ErorrLog.Delete";
        }
        public static class Report1
        {
            public const string View = "Permissions.Report1.View";
            public const string Create = "Permissions.Report1.Create";
            public const string Edit = "Permissions.Report1.Edit";
            public const string Delete = "Permissions.Report1.Delete";
        }
        public static class Threshold
        {
            public const string View = "Permissions.Threshold.View";
            public const string Create = "Permissions.Threshold.Create";
            public const string Edit = "Permissions.Threshold.Edit";
            public const string Delete = "Permissions.Threshold.Delete";
        }
        public static class PlanApprove
        {
            public const string View = "Permissions.PlanApprove.View";
            public const string Create = "Permissions.PlanApprove.Create";
            public const string Edit = "Permissions.PlanApprove.Edit";
            public const string Delete = "Permissions.PlanApprove.Delete";
        }
        public static class PlanSummary
        {
            public const string View = "Permissions.PlanSummary.View";
            public const string Create = "Permissions.PlanSummary.Create";
            public const string Edit = "Permissions.PlanSummary.Edit";
            public const string Delete = "Permissions.PlanSummary.Delete";
        }
    }
}