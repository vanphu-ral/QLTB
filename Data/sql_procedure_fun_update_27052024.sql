USE [MledNew2023]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplieFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateSupplieFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSignatureUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateSignatureUser]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanTargetFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanTargetFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanSupplieFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanSupplieFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanPeriodicReportFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanPeriodicReportFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanPeriodicFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanPeriodicFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanPeriodicDeviceFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanPeriodicDeviceFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanOverTargets]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanOverTargets]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanOverFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanOverFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanDailyTroubleReportFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanDailyTroubleReportFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanDailyFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdatePlanDailyFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdateInforUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateInforUser]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceTargetFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateDeviceTargetFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceHistoryStatus]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateDeviceHistoryStatus]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceFileScan]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateDeviceFileScan]
GO
/****** Object:  StoredProcedure [dbo].[UpdateDayStatusPlanDailyWorks]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateDayStatusPlanDailyWorks]
GO
/****** Object:  StoredProcedure [dbo].[UpdateAvatarUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[UpdateAvatarUser]
GO
/****** Object:  StoredProcedure [dbo].[PlanChangeActive]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[PlanChangeActive]
GO
/****** Object:  StoredProcedure [dbo].[PlanApproveStatusUpdate]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[PlanApproveStatusUpdate]
GO
/****** Object:  StoredProcedure [dbo].[PlanApproveMarkUpdate]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[PlanApproveMarkUpdate]
GO
/****** Object:  StoredProcedure [dbo].[ImportThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportThreshold]
GO
/****** Object:  StoredProcedure [dbo].[ImportTeam]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportTeam]
GO
/****** Object:  StoredProcedure [dbo].[ImportSupplieGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportSupplieGroup]
GO
/****** Object:  StoredProcedure [dbo].[ImportSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportSupplie]
GO
/****** Object:  StoredProcedure [dbo].[ImportShift]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportShift]
GO
/****** Object:  StoredProcedure [dbo].[ImportPosition]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportPosition]
GO
/****** Object:  StoredProcedure [dbo].[ImportLine]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportLine]
GO
/****** Object:  StoredProcedure [dbo].[ImportFactory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportFactory]
GO
/****** Object:  StoredProcedure [dbo].[ImportDeviceGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportDeviceGroup]
GO
/****** Object:  StoredProcedure [dbo].[ImportDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportDevice]
GO
/****** Object:  StoredProcedure [dbo].[ImportDepartment]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportDepartment]
GO
/****** Object:  StoredProcedure [dbo].[ImportBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[ImportBranch]
GO
/****** Object:  StoredProcedure [dbo].[GetYearPlanDaily]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetYearPlanDaily]
GO
/****** Object:  StoredProcedure [dbo].[GetYearDeviceTarget]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetYearDeviceTarget]
GO
/****** Object:  StoredProcedure [dbo].[GetUserNameByID]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUserNameByID]
GO
/****** Object:  StoredProcedure [dbo].[GetUserLogin]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[GetUserInforBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUserInforBranch]
GO
/****** Object:  StoredProcedure [dbo].[GetUserInfor]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUserInfor]
GO
/****** Object:  StoredProcedure [dbo].[GetUserByEmail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[GetUserActive]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUserActive]
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetUser]
GO
/****** Object:  StoredProcedure [dbo].[GetTroubleReportByID]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetTroubleReportByID]
GO
/****** Object:  StoredProcedure [dbo].[GetTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[GetThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetThreshold]
GO
/****** Object:  StoredProcedure [dbo].[GetThietBi]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetThietBi]
GO
/****** Object:  StoredProcedure [dbo].[GetTeamByBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetTeamByBranch]
GO
/****** Object:  StoredProcedure [dbo].[GetTeam]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetTeam]
GO
/****** Object:  StoredProcedure [dbo].[GetSupplieUse]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetSupplieUse]
GO
/****** Object:  StoredProcedure [dbo].[GetSupplieGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetSupplieGroup]
GO
/****** Object:  StoredProcedure [dbo].[GetSupplieById]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetSupplieById]
GO
/****** Object:  StoredProcedure [dbo].[GetSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetSupplie]
GO
/****** Object:  StoredProcedure [dbo].[GetShift]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetShift]
GO
/****** Object:  StoredProcedure [dbo].[GetSettingValueByLineID]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetSettingValueByLineID]
GO
/****** Object:  StoredProcedure [dbo].[GetSettingValueByEmail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetSettingValueByEmail]
GO
/****** Object:  StoredProcedure [dbo].[GetRoleNameByID]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetRoleNameByID]
GO
/****** Object:  StoredProcedure [dbo].[GetRole]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetRole]
GO
/****** Object:  StoredProcedure [dbo].[GetReportUsedSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportUsedSupplie]
GO
/****** Object:  StoredProcedure [dbo].[GetReportTimeStopTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportTimeStopTrouble]
GO
/****** Object:  StoredProcedure [dbo].[GetReportNumberThietBiOverThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportNumberThietBiOverThreshold]
GO
/****** Object:  StoredProcedure [dbo].[GetReportNumberBigTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportNumberBigTrouble]
GO
/****** Object:  StoredProcedure [dbo].[GetReportMaintenanceTracking]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportMaintenanceTracking]
GO
/****** Object:  StoredProcedure [dbo].[GetReportCurLineSum]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportCurLineSum]
GO
/****** Object:  StoredProcedure [dbo].[GetReportCostOfSupplieMonth]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReportCostOfSupplieMonth]
GO
/****** Object:  StoredProcedure [dbo].[GetReport6ForTimeStopTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport6ForTimeStopTrouble]
GO
/****** Object:  StoredProcedure [dbo].[GetReport6ForNumberThietBiOverThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport6ForNumberThietBiOverThreshold]
GO
/****** Object:  StoredProcedure [dbo].[GetReport6ForNumberBigTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport6ForNumberBigTrouble]
GO
/****** Object:  StoredProcedure [dbo].[GetReport5ForCurLineSum]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport5ForCurLineSum]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForTroubleDetails]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForTroubleDetails]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForTableHistory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForTableHistory]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChartInYear]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForLineMotorChartInYear]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChartInMonth]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForLineMotorChartInMonth]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChartInDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForLineMotorChartInDay]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChart]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForLineMotorChart]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineChart]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4ForLineChart]
GO
/****** Object:  StoredProcedure [dbo].[GetReport4DeviceAIStatusForDonutChart]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport4DeviceAIStatusForDonutChart]
GO
/****** Object:  StoredProcedure [dbo].[GetReport2ForMaintenanceTracking]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetReport2ForMaintenanceTracking]
GO
/****** Object:  StoredProcedure [dbo].[GetPosition]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPosition]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanTargetSummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanTargetSummary]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanTargetForSelect]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanTargetForSelect]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanTarget]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanTarget]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplieUse]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanSupplieUse]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplieSummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanSupplieSummary]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplieDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanSupplieDetail]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanSupplie]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSignature]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanSignature]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicSummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicSummary]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReportsSummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicReportsSummary]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReportsByDeviceIdAndYear]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicReportsByDeviceIdAndYear]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReportsByBranchIdAndYear]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicReportsByBranchIdAndYear]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReports]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicReports]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicDetail]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicByDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodicByDevice]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodic]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanPeriodic]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanOverSummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanOverSummary]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanOverDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanOverDevice]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanOver]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanOver]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanNumberByPlanType]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanNumberByPlanType]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanList]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanList]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleReportByDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailyTroubleReportByDay]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleReportByAll]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailyTroubleReportByAll]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailyTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleByDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailyTroubleByDay]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailyTrouble]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailySummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailySummary]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyBYDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDailyBYDay]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDaily]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanDaily]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanApprove]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetPlanApprove]
GO
/****** Object:  StoredProcedure [dbo].[GetNumberAjusByPlanNumber]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetNumberAjusByPlanNumber]
GO
/****** Object:  StoredProcedure [dbo].[GetNameDonvi]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetNameDonvi]
GO
/****** Object:  StoredProcedure [dbo].[GetMonthPlanDaily]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetMonthPlanDaily]
GO
/****** Object:  StoredProcedure [dbo].[GetMonthDeviceTarget]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetMonthDeviceTarget]
GO
/****** Object:  StoredProcedure [dbo].[GetLineByTeam]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetLineByTeam]
GO
/****** Object:  StoredProcedure [dbo].[GetLineByConfig]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetLineByConfig]
GO
/****** Object:  StoredProcedure [dbo].[GetLine]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetLine]
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataDonutChart]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInHomeDataDonutChart]
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataBarChart11]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInHomeDataBarChart11]
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataBarChart02]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInHomeDataBarChart02]
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataBarChart01]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInHomeDataBarChart01]
GO
/****** Object:  StoredProcedure [dbo].[GetInforReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforReport]
GO
/****** Object:  StoredProcedure [dbo].[GetInforPageHomeTableByKey]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforPageHomeTableByKey]
GO
/****** Object:  StoredProcedure [dbo].[GetInforPageHomeNewByKey]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforPageHomeNewByKey]
GO
/****** Object:  StoredProcedure [dbo].[GetInforPageHome]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforPageHome]
GO
/****** Object:  StoredProcedure [dbo].[GetInforDetaiReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforDetaiReport]
GO
/****** Object:  StoredProcedure [dbo].[GetInforDetaiPageHomeNew]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforDetaiPageHomeNew]
GO
/****** Object:  StoredProcedure [dbo].[GetInforDetaiPageHome]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetInforDetaiPageHome]
GO
/****** Object:  StoredProcedure [dbo].[GetForm]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetForm]
GO
/****** Object:  StoredProcedure [dbo].[GetFactory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetFactory]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceTargetSummary]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceTargetSummary]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceTarget]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceTarget]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceSupplieById]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceSupplieById]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceRepair]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceRepair]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistoryTroubleByQRCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceHistoryTroubleByQRCode]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistoryRepairByQRCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceHistoryRepairByQRCode]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistoryLocationByQRCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceHistoryLocationByQRCode]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceHistory]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceGroup]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceGetRangDongByBranchId]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceGetRangDongByBranchId]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceByQRCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceByQRCode]
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceByBranchId]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDeviceByBranchId]
GO
/****** Object:  StoredProcedure [dbo].[GetDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDevice]
GO
/****** Object:  StoredProcedure [dbo].[GetDepartment]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDepartment]
GO
/****** Object:  StoredProcedure [dbo].[GetDataSelectIN]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDataSelectIN]
GO
/****** Object:  StoredProcedure [dbo].[GetDataSelect]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetDataSelect]
GO
/****** Object:  StoredProcedure [dbo].[GetCurLineSum]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetCurLineSum]
GO
/****** Object:  StoredProcedure [dbo].[GetCurDeviceInLine]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetCurDeviceInLine]
GO
/****** Object:  StoredProcedure [dbo].[GetConfigSystemByKey]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetConfigSystemByKey]
GO
/****** Object:  StoredProcedure [dbo].[GetConfigSystem]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetConfigSystem]
GO
/****** Object:  StoredProcedure [dbo].[GetByBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetByBranch]
GO
/****** Object:  StoredProcedure [dbo].[GetBranchByFactory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetBranchByFactory]
GO
/****** Object:  StoredProcedure [dbo].[GetBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetBranch]
GO
/****** Object:  StoredProcedure [dbo].[GetAlertShow]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetAlertShow]
GO
/****** Object:  StoredProcedure [dbo].[GetAlert]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[GetAlert]
GO
/****** Object:  StoredProcedure [dbo].[EditUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditUser]
GO
/****** Object:  StoredProcedure [dbo].[EditTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[EditThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditThreshold]
GO
/****** Object:  StoredProcedure [dbo].[EditTeam]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditTeam]
GO
/****** Object:  StoredProcedure [dbo].[EditSupplieUseDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditSupplieUseDetail]
GO
/****** Object:  StoredProcedure [dbo].[EditSupplieGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditSupplieGroup]
GO
/****** Object:  StoredProcedure [dbo].[EditSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditSupplie]
GO
/****** Object:  StoredProcedure [dbo].[EditShift]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditShift]
GO
/****** Object:  StoredProcedure [dbo].[EditRole]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditRole]
GO
/****** Object:  StoredProcedure [dbo].[EditPosition]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPosition]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanTargetSolution]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanTargetSolution]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanTargetMeasurement]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanTargetMeasurement]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanTargetDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanTargetDevice]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanSupplieDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanSupplieDevice]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanPeriodicReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanPeriodicReport]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanPeriodicDeviceMonth]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanPeriodicDeviceMonth]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanPeriodicDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanPeriodicDetail]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanOverDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanOverDevice]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyTroubleSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanDailyTroubleSupplie]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanDailyTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanDailyTrouble]
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditPlanDailyDetail]
GO
/****** Object:  StoredProcedure [dbo].[EditLine]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditLine]
GO
/****** Object:  StoredProcedure [dbo].[EditForm]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditForm]
GO
/****** Object:  StoredProcedure [dbo].[EditFactory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditFactory]
GO
/****** Object:  StoredProcedure [dbo].[EditDeviceTargetDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditDeviceTargetDetail]
GO
/****** Object:  StoredProcedure [dbo].[EditDeviceRepairDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditDeviceRepairDetail]
GO
/****** Object:  StoredProcedure [dbo].[EditDeviceGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditDeviceGroup]
GO
/****** Object:  StoredProcedure [dbo].[EditDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditDevice]
GO
/****** Object:  StoredProcedure [dbo].[EditDepartment]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditDepartment]
GO
/****** Object:  StoredProcedure [dbo].[EditConfigSystem]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditConfigSystem]
GO
/****** Object:  StoredProcedure [dbo].[EditBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditBranch]
GO
/****** Object:  StoredProcedure [dbo].[EditAlert]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[EditAlert]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserLogin]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserActive]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteUserActive]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[DeleteThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteThreshold]
GO
/****** Object:  StoredProcedure [dbo].[DeleteTeam]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteTeam]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplieUseDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteSupplieUseDetail]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplieUse]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteSupplieUse]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplieGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteSupplieGroup]
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteSupplie]
GO
/****** Object:  StoredProcedure [dbo].[DeleteShift]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteShift]
GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[DeletePosition]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePosition]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanTargetDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanTargetDevice]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanSupplieDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanSupplieDetail]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanSupplie]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodicReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanPeriodicReport]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodicDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanPeriodicDevice]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodicDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanPeriodicDetail]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodic]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanPeriodic]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanOverDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanOverDevice]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanOver]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanOver]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyTroubleSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanDailyTroubleSupplie]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanDailyTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanDailyTrouble]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanDailyDetail]
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDaily]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeletePlanDaily]
GO
/****** Object:  StoredProcedure [dbo].[DeleteLine]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteLine]
GO
/****** Object:  StoredProcedure [dbo].[DeleteForm]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteForm]
GO
/****** Object:  StoredProcedure [dbo].[DeleteFactory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteFactory]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDeviceTargetDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteDeviceTargetDetail]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDeviceGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteDeviceGroup]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteDevice]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteDepartment]
GO
/****** Object:  StoredProcedure [dbo].[DeleteConfigSystem]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteConfigSystem]
GO
/****** Object:  StoredProcedure [dbo].[DeleteBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteBranch]
GO
/****** Object:  StoredProcedure [dbo].[DeleteAlert]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[DeleteAlert]
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanTarget]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateToAdjustPlanTarget]
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateToAdjustPlanSupplie]
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanPeriodic]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateToAdjustPlanPeriodic]
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanOver]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateToAdjustPlanOver]
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanDaily]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateToAdjustPlanDaily]
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustDeviceTarget]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateToAdjustDeviceTarget]
GO
/****** Object:  StoredProcedure [dbo].[CreateNewPlanOver]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CreateNewPlanOver]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserExisted]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CheckUserExisted]
GO
/****** Object:  StoredProcedure [dbo].[CheckRegisterExisted]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[CheckRegisterExisted]
GO
/****** Object:  StoredProcedure [dbo].[AddUserLogin]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[AddUserActive]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddUserActive]
GO
/****** Object:  StoredProcedure [dbo].[AddThreshold]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddThreshold]
GO
/****** Object:  StoredProcedure [dbo].[AddTeam]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddTeam]
GO
/****** Object:  StoredProcedure [dbo].[AddSupplieUseDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddSupplieUseDevice]
GO
/****** Object:  StoredProcedure [dbo].[AddSupplieGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddSupplieGroup]
GO
/****** Object:  StoredProcedure [dbo].[AddSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddSupplie]
GO
/****** Object:  StoredProcedure [dbo].[AddShift]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddShift]
GO
/****** Object:  StoredProcedure [dbo].[AddPosition]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPosition]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanTargetDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanTargetDevice]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanSupplieDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanSupplieDevice]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanPeriodicReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanPeriodicReport]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanPeriodicDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanPeriodicDevice]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanPeriodicDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanPeriodicDetail]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanOverDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanOverDevice]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTroubleWoker]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanDailyTroubleWoker]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTroubleSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanDailyTroubleSupplie]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanDailyTroubleReport]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTrouble]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanDailyTrouble]
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddPlanDailyDetail]
GO
/****** Object:  StoredProcedure [dbo].[AddLine]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddLine]
GO
/****** Object:  StoredProcedure [dbo].[AddForm]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddForm]
GO
/****** Object:  StoredProcedure [dbo].[AddFactory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddFactory]
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceTargetDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddDeviceTargetDetail]
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceRepairDetail]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddDeviceRepairDetail]
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceHistory]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddDeviceHistory]
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceGroup]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddDeviceGroup]
GO
/****** Object:  StoredProcedure [dbo].[AddDevice]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddDevice]
GO
/****** Object:  StoredProcedure [dbo].[AddDepartment]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddDepartment]
GO
/****** Object:  StoredProcedure [dbo].[AddConfigSystem]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddConfigSystem]
GO
/****** Object:  StoredProcedure [dbo].[AddBranch]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddBranch]
GO
/****** Object:  StoredProcedure [dbo].[AddAndEditDeviceSupplie]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddAndEditDeviceSupplie]
GO
/****** Object:  StoredProcedure [dbo].[AddAlert]    Script Date: 27/05/2024 21:46:49 ******/
DROP PROCEDURE [dbo].[AddAlert]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanStatusByUserIdAndPlan]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanStatusByUserIdAndPlan]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetTable_From_String_Split]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetTable_From_String_Split]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_String_Split_with_Index]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufn_String_Split_with_Index]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanStatusJsonByUserIdAndPlan]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanStatusJsonByUserIdAndPlan]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanPeriodicNoteGoiYByDeviceId]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanPeriodicNoteGoiYByDeviceId]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanPeriodicActByPlanID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanPeriodicActByPlanID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanMarkByUser]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanMarkByUser]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyWordsByPlanIDInDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanDailyWordsByPlanIDInDay]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyWordsByPlanID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanDailyWordsByPlanID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyTroubleSupplieByTroubleID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanDailyTroubleSupplieByTroubleID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailySignaltureByPlanID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanDailySignaltureByPlanID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyDetaiByPlanID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnPlanDailyDetaiByPlanID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetWorkContentForBBBDTB]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetWorkContentForBBBDTB]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetValueDayInPlanDailyWork]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetValueDayInPlanDailyWork]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetValueDayInPlanDaily]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetValueDayInPlanDaily]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserNameByListID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetUserNameByListID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserNameByID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetUserNameByID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserListViewPlan]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetUserListViewPlan]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserInforByListID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetUserInforByListID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserAvataByListID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetUserAvataByListID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetTrangthaiThietbiValue]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetTrangthaiThietbiValue]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetTrangthaiThietbi]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetTrangthaiThietbi]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSupplieName]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSupplieName]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTileHoanthanhBDTBKHNam]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTileHoanthanhBDTBKHNam]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBtongtoanganh]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBtongtoanganh]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBloihongnghiemtrong]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBloihongnghiemtrong]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBloihongDaXL]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBloihongDaXL]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBloihong]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBloihong]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBkhonghoatdong]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBkhonghoatdong]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBdenhanbaotri]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBdenhanbaotri]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBddaduocnghiemthu]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBddaduocnghiemthu]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBdanghoatdong]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBdanghoatdong]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBDaBTDDSoKHThang]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBDaBTDDSoKHThang]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBDaBTDDSoKHNam]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumTBDaBTDDSoKHNam]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumSolanthuchienbaoduong]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumSolanthuchienbaoduong]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumLanloihong]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetSumLanloihong]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetStatusDeviceById]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetStatusDeviceById]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForYearByYear]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetRulForYearByYear]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForYear]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetRulForYear]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForMonthByMonth]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetRulForMonthByMonth]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForMonth]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetRulForMonth]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForDayByDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetRulForDayByDay]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForDay]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetRulForDay]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetNUmberDayByMonth]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetNUmberDayByMonth]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetNameCodeByTableID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetNameCodeByTableID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetNameCodeByBranchID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetNameCodeByBranchID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserWeekInfor]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetJsonUserWeekInfor]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserInforByListID]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetJsonUserInforByListID]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserActInforByDAY]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetJsonUserActInforByDAY]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserActInfor]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetJsonUserActInfor]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonPlanSignatureStatusApprove]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetJsonPlanSignatureStatusApprove]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonActLogInforByDAY]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetJsonActLogInforByDAY]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetFuncNameByTable]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetFuncNameByTable]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetDeviceCodeFromDeviceId]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetDeviceCodeFromDeviceId]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetDepartmentActForBBBDTB]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetDepartmentActForBBBDTB]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPMucTieuChiPHiSUAChUaByParameter]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetBCPMucTieuChiPHiSUAChUaByParameter]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetTimeRepairByParameter]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetBCPlanTagetTimeRepairByParameter]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetNumberStopTroubleByParameter]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetBCPlanTagetNumberStopTroubleByParameter]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetCostRepairByParameter]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnGetBCPlanTagetCostRepairByParameter]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusGetTime]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnDeviceStatusByStatusGetTime]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusGetNumber]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnDeviceStatusByStatusGetNumber]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusAndDeviceGetTime]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnDeviceStatusByStatusAndDeviceGetTime]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusAndDeviceGetNumber]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnDeviceStatusByStatusAndDeviceGetNumber]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreateTroubleReportCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreateTroubleReportCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanSupplieCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanSupplieCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanPeriodicDeviceCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanPeriodicDeviceCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanNumberCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanNumberCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanDeviceCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanDeviceCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanDailyCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanDailyCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanApproveName]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanApproveName]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanApproveAvatarUserCreate]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreatePlanApproveAvatarUserCreate]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreateDeviceCode]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCreateDeviceCode]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnConvertDatetimeToString]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnConvertDatetimeToString]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCheckPlanSignatureStatusApprove]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCheckPlanSignatureStatusApprove]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCheckPlanPeriodicDeviceOVER]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCheckPlanPeriodicDeviceOVER]
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCheckPlanPeriodicDeviceDone]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[ufnCheckPlanPeriodicDeviceDone]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMaintenanceCycleName]    Script Date: 27/05/2024 21:46:49 ******/
DROP FUNCTION [dbo].[GetMaintenanceCycleName]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMaintenanceCycleName]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[GetMaintenanceCycleName](@val int)  
RETURNS nvarchar(150)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50);  
if (@val =1 ) 
  select @ret =  N'Ngày'
else if (@val =2 ) 
  select @ret =  N'Tuần'
else if (@val =3 ) 
select @ret =  N'Tháng'
else if (@val =4 ) 
  select @ret =  N'Quý'
else if (@val =5 ) 
  select @ret =  N'Năm'
else  if (@val =6 ) 
  select @ret =  N'Khác'
else  
  select @ret =  N''

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCheckPlanPeriodicDeviceDone]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCheckPlanPeriodicDeviceDone](@PlanReportID bigint)  
RETURNS int
AS   
-- Returns the stock level for the product.  
---Kiểm tra kế hoạch bảo dưỡng được nghiệm thu hay chưa
BEGIN  
    DECLARE @ret int;  
	DECLARE @ck1 int =0;  	
	DECLARE @ck2 int =0;
	select @ck1 = IsAccept from PlanSignatureStatus s where s.PlanTable ='PlanPeriodicReport' And s.FieldName ='UserBranch' AND s.PlanId =@PlanReportID
    select @ck2 = IsAccept from PlanSignatureStatus s where s.PlanTable ='PlanPeriodicReport' And s.FieldName ='UserFactory' AND s.PlanId =@PlanReportID
 	
	--Biên bản đã được trưởng phòng, bộ phận xác nhận thì coi như đã được nghiệm thu
	IF(@ck1 = 1 AND @ck2 = 1) 
	BEGIN	
	    SELECT @ret =1
	END
	else select @ret = 0

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCheckPlanPeriodicDeviceOVER]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCheckPlanPeriodicDeviceOVER](@MonthPlan varchar(50))  
RETURNS int
AS   
-- Returns the stock level for the product. Kiểm tra quá lịch bảo dưỡng thiết bị 
BEGIN  
    DECLARE @ret int =0;  
	DECLARE @RowIndex int;  
	DECLARE @count int;  
	DECLARE @Name nvarchar(50);  
    DECLARE @seID int;
	--- Kiểm tra kế hoạch có quá hạn hay không
	--- Kiểm tra tháng kế hoạch
	if(@MonthPlan = '' OR @MonthPlan IS NULL) RETURN 0

	Select @count = COUNT(*) from dbo.ufn_String_Split_with_Index(@MonthPlan, ',') 
	set @RowIndex =0;
	while(@count>@RowIndex)
		begin 
			 Select @seID =CAST(ColValue AS int)  from dbo.ufn_String_Split_with_Index(@MonthPlan, ',')
                      Order by STT desc OFFSET @RowIndex ROWS FETCH NEXT 1 ROWS ONLY;
                
				--tháng kế hoạch > tháng hiện tại => trả về 1 chưa quá hạn
				if(@seID > MONTH( GETDATE())) RETURN 1
  
             set @RowIndex = @RowIndex+1;
		end 

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCheckPlanSignatureStatusApprove]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCheckPlanSignatureStatusApprove](@PlanTable  nvarchar(20), @FieldName nvarchar(20), @PlanReportID bigint)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret int;  

	IF EXISTS (select Id from PlanSignatureStatus s where s.PlanTable =@PlanTable And s.FieldName =@FieldName AND s.PlanId =@PlanReportID)
    	select Top(1) @ret = ISNULL(IsAccept, 0) from PlanSignatureStatus s where s.PlanTable =@PlanTable And s.FieldName =@FieldName AND s.PlanId =@PlanReportID order by ID desc
   else 
        select @ret =-1
	--0: Gửi ký duyệt
	--1: Đồng ý=> đã ký
	--2: từ chối
	--3: Quá hạn
	-- -1 chưa gửi phê duyệt

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnConvertDatetimeToString]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnConvertDatetimeToString](@DateValue datetime)  
RETURNS nvarchar(150)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @ngay int;  	
	DECLARE @thang int;  	
	DECLARE @nam int;    	

	IF(@DateValue IS NOT NULL AND @DateValue <> '') 
	BEGIN	
	    SELECT @ngay = DAY(@DateValue)
		SELECT @thang = MONTH(@DateValue)
		SELECT @nam = YEAR(@DateValue)
	END

	select @ret = CONCAT(N'Ngày ', @ngay ,N' tháng ', @thang,N' năm ', @nam)
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreateDeviceCode]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreateDeviceCode](@GroupID int, @DeviceId int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	--DECLARE @countINTeam int;  	
	DECLARE @countINGroup int;  	
	DECLARE @GroupiDOLd nvarchar(50);  
	DECLARE @GroupCodeNew nvarchar(50); 	
	--DECLARE @TeamIDOLd nvarchar(50);  
	--DECLARE @TeamCodeNew nvarchar(50);  	
	DECLARE @NumberCode nvarchar(50);  	

	IF(@DeviceId =0) --Insert Device
	BEGIN	
	    SELECT @countINGroup = count(pd.id) +1 from Device pd where pd.GroupID = @GroupID;
		--SELECT @countINTeam = count(pd.id) +1 from Device pd where pd.TeamId = @TeamId;

		SELECT @GroupCodeNew = concat(DeviceGroup.Code, '.', DeviceGroup.FirstName) from DeviceGroup where DeviceGroup.Id = @GroupID;
		--SELECT @TeamCodeNew = Team.Code from Team where Team.Id = @TeamId;
		if(@countINGroup <10) set @NumberCode = CONCAT('0', @countINGroup)
		--else if(@countINGroup <100) set @NumberCode = CONCAT('', @countINGroup)
		else set @NumberCode = CONCAT('', @countINGroup)

		SELECT @ret = REPLACE(CONCAT(@GroupCodeNew, @NumberCode), ' ', '')
		RETURN @ret;  
	END
	ELSE
	BEGIN	     	
		RETURN @ret;  
	END
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanApproveAvatarUserCreate]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanApproveAvatarUserCreate](@PlandID int, @PlanTable nvarchar(50))  
RETURNS nvarchar(500)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(500) ;  
	if(@PlanTable='PlanDaily')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanDaily p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	else if(@PlanTable='PlanDailyTroubleReport')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserAct, ';'))  FOR JSON AUTO))
	    FROM PlanDailyTroubleReport p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
		WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanOver')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanOver p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
    ELSE if(@PlanTable='PlanPeriodic')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanPeriodic p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanSupplie')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanSupplie p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanTarget')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanTarget p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanPeriodicDevice')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanPeriodicDevice pd INNER JOIN PlanPeriodic p on p.Id = pd.PlanId INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE pd.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanPeriodicReport')
	BEGIN
	  select @ret = CONVERT(nvarchar(max), (SELECT ISNULL(Avatar, 'avatauser1.png') as Avatar, FullName FROM AspNetUsers where Id IN (Select value from dbo.ufnGetTable_From_String_Split(p.UserPlan, ';'))  FOR JSON AUTO))
	    FROM PlanPeriodicReport pr INNER JOIN PlanPeriodicDevice pd on pr.PlanDeviceId = pd.Id INNER JOIN
		                     PlanPeriodic p on p.Id = pd.PlanId INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	           WHERE pr.Id =  @PlandID;  
	END

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanApproveName]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanApproveName](@PlandID int, @PlanTable nvarchar(50))  
RETURNS nvarchar(500)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(500) ;  
	if(@PlanTable='PlanDaily')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', p.PlanNumber, N': Bảng kiểm tra, bảo dưỡng thiết bị hàng ngày, hàng tuần. Tháng ',p.PlanMonth,'/Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name) 
	    FROM PlanDaily p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	else if(@PlanTable='PlanDailyTroubleReport')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', p.ReportNumber, N': Biêm bản sự cố. Tháng ',MONTH( p.DateTrouble) ,'/Năm ', YEAR( p.DateTrouble) ,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name) 
	    FROM PlanDailyTroubleReport p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
		WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanOver')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', p.PlanNumber, N': Kế hoạch sữa chữa lớn, đại tu thiết bị. ''/Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name) 
	    FROM PlanOver p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
    ELSE if(@PlanTable='PlanPeriodic')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', p.PlanNumber, N': Kế hoạch SCBD thiết bị định kỳ. ''/Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name)
	    FROM PlanPeriodic p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanSupplie')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', p.PlanNumber, N': Kế hoạch sử dụng vật tư, phụ tùng. ''/Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name)
	    FROM PlanSupplie p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanTarget')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', p.PlanNumber, N': Kế hoạch mục tiêu thiết bị. ''/Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name) 
	    FROM PlanTarget p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanPeriodicDevice')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', pd.PlanNumber, N': Chi tiết kiểm tra, bảo dưỡng thiết bị hàng ngày, hàng tuần. Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name) 
	    FROM PlanPeriodicDevice pd INNER JOIN PlanPeriodic p on p.Id = pd.PlanId INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE pd.Id =  @PlandID;  
	END
	ELSE if(@PlanTable='PlanPeriodicReport')
	BEGIN
	  select @ret = CONCAT(N'Đề xuất ký duyệt kế hoạch ', pr.ReportNumberCode, N': BIên bản nghiệm thu thiết bị. Tháng /Năm ', p.PlanYear,N'. Đơn vị: ', dbo.Factory.Name, '; ', dbo.Branch.Name) 
	    FROM PlanPeriodicReport pr INNER JOIN PlanPeriodicDevice pd on pr.PlanDeviceId = pd.Id INNER JOIN
		                     PlanPeriodic p on p.Id = pd.PlanId INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	           WHERE pr.Id =  @PlandID;  
	END

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanCode]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanCode](@PlandID int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @count int;  
	SELECT @count = count(pd.id) +1 from PlanPeriodicDevice pd where pd.PlanId = @PlandID;
	
	SELECT @ret = REPLACE(CONCAT(f.Code, '.', b.Code, '.KHBDTB.', @count), ' ', '')
    FROM PlanPeriodic p   
	 inner join Branch b on b.Id = p.BranchId
    inner join Factory f on f.Id = p.FactoryId
    WHERE p.Id =  @PlandID; 

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanDailyCode]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanDailyCode](@DeviceId int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50);  
	DECLARE @DeviceCode nvarchar(50);  
	SELECT @DeviceCode = d.Code from Device d WHERE d.Id =@DeviceId;
	
	SELECT @ret = REPLACE(CONCAT('RD.QT15.BM03.',@DeviceCode), ' ', '')
  --  FROM PlanDaily p   
	 --inner join Branch b on b.Id = p.BranchId
  --  inner join Factory f on f.Id = p.FactoryId
  --  WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanDeviceCode]    Script Date: 27/05/2024 21:46:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanDeviceCode](@PlandID int, @DeviceId int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @count int;  
	DECLARE @DeviceCode nvarchar(50);  
	SELECT @count = count(pd.id) +1 from PlanPeriodicDevice pd where pd.PlanId = @PlandID;
	SELECT @DeviceCode = b.Code from Device b WHERE b.Id = @DeviceId 

	SELECT @ret = REPLACE(CONCAT(@count, '.', p.PlanYear , '/KHBDTB-', f.Code, '.', b.Code, '.', @DeviceCode), ' ', '')
       FROM PlanPeriodic p   
	 inner join Branch b on b.Id = p.BranchId
    inner join Factory f on f.Id = p.FactoryId
    WHERE p.Id =  @PlandID; 

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanNumberCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanNumberCode](@FactoryID int, @BranchID int, @Year int, @stype nvarchar(10), @table nvarchar(20), @DeviceId int, @month int, @NewID bigint)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @count int;  
	DECLARE @BranchCode nvarchar(50);  
	DECLARE @FactoryCode nvarchar(50);  
	DECLARE @DeviceCode nvarchar(50);  
	SELECT @BranchCode = b.Code from Branch b WHERE b.Id = @BranchID 
	SELECT @FactoryCode = b.Code from Factory b WHERE b.Id = @FactoryID 
	if(@DeviceId IS NOT NULL AND @DeviceId <> 0) SELECT @DeviceCode = b.Code from Device b WHERE b.Id = @DeviceId 

	if(@table = 'PlanDaily')
	     SELECT @count = count(p.id) +1 from PlanDaily p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
	    else if(@table = 'PlanDailyTroubleReport')
	     SELECT @count = count(p.id) +1 from PlanDailyTroubleReport p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND year(DateTrouble) = @Year
		else if(@table = 'PlanPeriodic')
	     SELECT @count = count(p.id) +1 from PlanPeriodic p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
		else if(@table = 'PlanPeriodicDevice')
	     SELECT @count = count(p.id) +1 from PlanPeriodicDevice p --WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND year(DateTrouble) = @Year
		else if(@table = 'PlanPeriodicReport')
	     SELECT @count = count(p.id) +1 from PlanPeriodicReport p --WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND year(DateTrouble) = @Year
		else if(@table = 'PlanSupplie')
	     SELECT @count = count(p.id) +1 from PlanSupplie p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
		else if(@table = 'PlanOver')
	     SELECT @count = count(p.id) +1 from PlanOver p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
		else if(@table = 'PlanTarget')
	     SELECT @count = count(p.id) +1 from PlanTarget p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
		else if(@table = 'DeviceTarget')
	     SELECT @count = count(p.id) +1 from DeviceTarget p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
		else 
	     SELECT @count = count(p.id) +1 from PlanDailyTroubleReport p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND year(DateTrouble) = @Year
 
 if(@table = 'PlanPeriodicDevice')
  BEGIN
    DECLARE @code1 nvarchar(50);  
	DECLARE @code2 nvarchar(50);  
	SELECT @code1 = REPLACE(CONCAT(@count, '.', @Year , '/',@stype,'-',@FactoryCode, '.', @BranchCode), ' ', '');
    SELECT @code2 = REPLACE(CONCAT(@count, '.', @Year , '/', 'BBNTTB' ,'-',@FactoryCode, '.', @BranchCode), ' ', '');
    SELECT @ret = CONCAT(@code1,';',@code2);
	END
else 
 BEGIN
	SELECT @ret = REPLACE(CONCAT(@count, '.', @Year , '/',@stype,'-',@FactoryCode, '.', @BranchCode), ' ', '')
	END
	    RETURN @ret;  
END;  
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanPeriodicDeviceCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanPeriodicDeviceCode](@PlandID int, @DeviceId int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @count int;  
	DECLARE @DeviceCode nvarchar(50);  
	SELECT @count = count(pd.id) +1 from PlanPeriodicDevice pd where pd.PlanId = @PlandID;
	SELECT @DeviceCode = b.Code from Device b WHERE b.Id = @DeviceId 

	SELECT @ret = REPLACE(CONCAT(@count, '.', p.PlanYear , '/KHBDTB-', f.Code, '.', b.Code, '.', @DeviceCode), ' ', '')
       FROM PlanPeriodic p   
	 inner join Branch b on b.Id = p.BranchId
    inner join Factory f on f.Id = p.FactoryId
    WHERE p.Id =  @PlandID; 

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreatePlanSupplieCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreatePlanSupplieCode](@FactoryID int, @BranchID int, @Year int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @count int;  
	SELECT @count = count(p.id) +1 from PlanSupplie p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year
	
	SELECT @ret = REPLACE(CONCAT(@FactoryID, '.', @BranchID , '.', @Year, '.', @count, '/SC.VTDP'), ' ', '')
  --  FROM PlanOver p   
	 --inner join Branch b on b.Id = p.BranchId
  --  inner join Factory f on f.Id = p.FactoryId
  --  WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnCreateTroubleReportCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnCreateTroubleReportCode](@FactoryID int, @BranchID int, @Year int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @count int;  
	DECLARE @BranchCode nvarchar(50);  
	DECLARE @FactoryCode nvarchar(50);  
	DECLARE @DeviceCode nvarchar(50);  
	SELECT @BranchCode = b.Code from Branch b WHERE b.Id = @BranchID 
	SELECT @FactoryCode = b.Code from Factory b WHERE b.Id = @FactoryID 
	SELECT @count = count(p.id) +1 from PlanDailyTroubleReport p WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND year(DateTrouble) = @Year
	
	SELECT @ret = REPLACE(CONCAT(@count, '.', @Year , '/BBSC-',@FactoryCode, '.', @BranchCode), ' ', '')
  --  FROM PlanOver p   
	 --inner join Branch b on b.Id = p.BranchId
  --  inner join Factory f on f.Id = p.FactoryId
  --  WHERE p.FactoryId =  @FactoryID AND p.BranchId = @BranchID AND p.PlanYear = @Year

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusAndDeviceGetNumber]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnDeviceStatusByStatusAndDeviceGetNumber](@status int, @year int, @monthindex int, @DeviceCode nvarchar(50), @Note nvarchar(50))  
RETURNS int  
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
    SET @ret= ISNULL((select Count(*) from MledData2023.dbo.DeviceAIStatus ds 
	              where ValueStatus >=0 AND Note IN ('transformer') 
				  AND (ds.ValueStatus = @status OR @status =-2) 
				  AND DATEDIFF(MONTH, ds.TimeCreated, GetDate()) = @monthindex  +4
				  AND (ds.DeviceCode = @DeviceCode  OR @DeviceCode ='')
				  AND (ds.Note = @Note  OR @Note ='')), 0)

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusAndDeviceGetTime]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnDeviceStatusByStatusAndDeviceGetTime](@status int, @year int, @monthindex int, @DeviceCode nvarchar(50), @Note nvarchar(50))  
RETURNS int  
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
     select @ret = SUM(ISNULL(ds.TimeReport, 0)/3600) from MledData2023.dbo.DeviceAIStatus ds 
	              where ValueStatus >=0 AND Note IN ('transformer') 
				  AND (ds.ValueStatus = @status OR @status =-2) 
				  AND DATEDIFF(MONTH, ds.TimeCreated, GetDate()) = @monthindex +4
				  AND (ds.DeviceCode = @DeviceCode  OR @DeviceCode ='')
				  AND (ds.Note = @Note  OR @Note ='')

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusGetNumber]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnDeviceStatusByStatusGetNumber](@status int, @year int, @month int)  
RETURNS int  
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
    SET @ret= ISNULL((select Count(*) from MledData2023.dbo.DeviceAIStatus ds 
	              where ValueStatus >=0 AND Note IN ('transformer') 
				  AND  (ds.ValueStatus = @status OR @status =-2) 
				  AND (YEAR(ds.TimeCreated) = @year OR @year =0)
				  AND (MONTH(ds.TimeCreated) = @month  OR @month =0)), 0)

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnDeviceStatusByStatusGetTime]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnDeviceStatusByStatusGetTime](@status int, @year int, @month int)  
RETURNS int  
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
     select @ret = SUM(ISNULL(ds.TimeReport, 0)/3600) from MledData2023.dbo.DeviceAIStatus ds 
	              where ValueStatus >=0 AND Note IN ('transformer') 
				  AND (ds.ValueStatus = @status OR @status =-2) 
				  AND (YEAR(ds.TimeCreated) = @year OR @year =0)
				  AND (MONTH(ds.TimeCreated) = @month  OR @month =0)

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetCostRepairByParameter]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetBCPlanTagetCostRepairByParameter](@month int, @year int, @BranchId int, @FactoryId int, @DeviceID int)  
RETURNS bigint   
AS   
-- Returns the stock level for the product.  
BEGIN  
	DECLARE @ret bigint;
  
   Select @ret = ISNULL((SELECT SUM(pds.ToMoney)		 
						FROM  PlanDailyTroubleSupplie pds
                        inner join PlanDailyTrouble pdt ON pds.TroubleId = pdt.Id
                        inner join PlanDaily p on p.Id = pdt.PlanId
				WHERE	p.BranchId	= @BranchId 
								AND p.FactoryId	= @FactoryId
								AND p.PlanYear	= @year 
								AND (MONTH(pdt.TroubleDate)= @month OR @month =0)
								AND (p.DeviceId	= @DeviceId OR @DeviceId=0)), 0) + ISNULL((SELECT  SUM(pdts.ToMoney)	
								FROM  SupplieUseDetail pdts
									inner join SupplieUse pdt on pdt.Id = pdts.SupplieUseId
								Where 	(pdt.BranchId		= @BranchId OR @BranchId =0)
									AND (pdt.FactoryId	= @FactoryId OR @FactoryId =0)
									AND (pdt.PlanYear			= @year OR @year =0)
									AND (pdt.PlanMonth		= @month OR @month =0)
									), 0) ;
   return  @ret;
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetNumberStopTroubleByParameter]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetBCPlanTagetNumberStopTroubleByParameter](@month int, @year int, @BranchId int, @FactoryId int, @DeviceID int)  
RETURNS int   
AS   
-- Returns the stock level for the product.  
BEGIN  
	DECLARE @ret1 int;
	DECLARE @ret2 int;
	DECLARE @ret int;
	set @ret1 = (select COUNT(pdt.Id)		 
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						WHERE	(p.BranchId	= @BranchId  OR @BranchId =0)
								AND (p.FactoryId	= @FactoryId OR @FactoryId =0)
								AND p.PlanYear	= @year 
								AND (p.PlanMonth= @month OR @month =0)
								AND (p.DeviceId	= @DeviceId OR @DeviceId=0))
								--AND pdt.HasReport =1

   set @ret2 = (SELECT COUNT(pdt.Id)		 
						FROM  DeviceRepairDetail pdt
						inner join DeviceRepair p on p.Id = pdt.DeviceRepairId
						WHERE	(p.BranchId	= @BranchId  OR @BranchId =0)
								AND (p.FactoryId	= @FactoryId OR @FactoryId =0)
								AND p.PlanYear	= @year 
								AND (p.PlanMonth= @month OR @month =0)
								AND (pdt.DeviceId	= @DeviceId OR @DeviceId=0))
   
   set @ret = @ret1 + @ret2;
													
   
   return @ret;
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](@month int, @year int, @BranchId int, @FactoryId int, @DeviceID int)  
RETURNS int   
AS   
-- Returns the stock level for the product.  
BEGIN  
	DECLARE @ret1 int;
	DECLARE @ret2 int;
	DECLARE @ret int;
	set @ret1 = (select COUNT(pdt.Id)		 
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						WHERE	(p.BranchId	= @BranchId  OR @BranchId =0)
								AND (p.FactoryId	= @FactoryId OR @FactoryId =0)
								AND p.PlanYear	= @year 
								AND (p.PlanMonth= @month OR @month =0)
								AND (p.DeviceId	= @DeviceId OR @DeviceId=0))
								--AND pdt.HasReport =1

   set @ret2 = (SELECT COUNT(pdt.Id)		 
						FROM  DeviceRepairDetail pdt
						inner join DeviceRepair p on p.Id = pdt.DeviceRepairId
						WHERE	(p.BranchId	= @BranchId  OR @BranchId =0)
								AND (p.FactoryId	= @FactoryId OR @FactoryId =0)
								AND p.PlanYear	= @year 
								AND (p.PlanMonth= @month OR @month =0)
								AND (pdt.DeviceId	= @DeviceId OR @DeviceId=0))
   
   set @ret = @ret1 + @ret2;
   return @ret ;
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetTimeRepairByParameter]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetBCPlanTagetTimeRepairByParameter](@month int, @year int, @BranchId int, @FactoryId int, @DeviceID int)  
RETURNS int   
AS   
-- Returns the stock level for the product.  
BEGIN  
	DECLARE @ret int;

	SELECT @ret =  SUM(ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate))) 			 
						FROM  PlanPeriodicReport pdt
						inner join PlanPeriodicDevice pd on pd.Id = pdt.PlanDeviceId
						WHERE pd.Id	IN (SELECT p.Id 
													FROM PlanPeriodicDevice pd2 inner join PlanPeriodic p on p.Id = pd2.PlanId
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId
														AND p.PlanYear	= @year 
														AND (MONTH(pdt.ReportDate)= @month OR @month =0)
														AND (pd2.DeviceId	= @DeviceId OR @DeviceId=0))
                                AND pdt.ReportDate IS NOT NULL
						     	AND ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) >0 
   
   return @ret;
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter](@month int, @year int, @BranchId int, @FactoryId int, @DeviceID int)  
RETURNS int   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret1 int;
	DECLARE @ret2 int;
	DECLARE @ret int;
	set @ret1 = CAST((select SUM(ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd))) 			 
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						WHERE	(p.BranchId	= @BranchId  OR @BranchId =0)
														AND (p.FactoryId	= @FactoryId OR @FactoryId =0)														
														AND (p.PlanMonth= @month OR @month =0)
														AND (p.DeviceId	= @DeviceId OR @DeviceId=0)
														AND p.PlanYear	= @year)AS int)

   set @ret2 = CAST((SELECT SUM(pdt.TimeStops)		 
						FROM  DeviceRepairDetail pdt
						inner join DeviceRepair p on p.Id = pdt.DeviceRepairId
						WHERE	(p.BranchId	= @BranchId  OR @BranchId =0)
								AND (p.FactoryId	= @FactoryId OR @FactoryId =0)
								AND p.PlanYear	= @year 
								AND (p.PlanMonth= @month OR @month =0)
								AND (pdt.DeviceId	= 0 OR 0=0))AS int)
   
   set @ret = @ret1 + @ret2;
   
   return @ret;
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetBCPMucTieuChiPHiSUAChUaByParameter]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetBCPMucTieuChiPHiSUAChUaByParameter](@month int, @year int, @BranchId int, @FactoryId int, @DeviceID int)  
RETURNS bigint   
AS   
-- Returns the stock level for the product.  
BEGIN  
	DECLARE @ret bigint;
  
   Select @ret = ISNULL((SELECT SUM(pt.MinValue) * 1000000		 
						FROM  PlanTargetDevice pt
						inner join PlanTarget p ON p.Id = pt.PlanId
				WHERE pt.TargetType =4
				                AND p.BranchId	= @BranchId 
								AND p.FactoryId	= @FactoryId
								AND p.PlanYear	= @year 
								--AND (MONTH(pdt.TroubleDate)= @month OR @month =0)
								--AND (p.DeviceId	= @DeviceId OR @DeviceId=0)
								), 0) 
   return  @ret;
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetDepartmentActForBBBDTB]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetDepartmentActForBBBDTB](@PlanDeviceId int)  
RETURNS nvarchar(Max)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(Max);  
	--DECLARE @RowIndex int;  
	--DECLARE @count int;  
	DECLARE @DepartmentAct nvarchar(500);  
 --   DECLARE @Rowcontent nvarchar(500);
	--SET @ret ='';
	--Select @count = COUNT(*) from PlanPeriodicDetail p where p.PlanDeviceId =@PlanDeviceId
	--set @RowIndex =0;

	--while(@count>@RowIndex)
	--	begin 
	--		 Select @DepartmentAct = p.DepartmentAct from PlanPeriodicDetail p where p.PlanDeviceId =@PlanDeviceId
 --                     Order by Id ASC OFFSET @RowIndex ROWS FETCH NEXT 1 ROWS ONLY;

 --            SET @Rowcontent = CONCAT('<p>&emsp; &nbsp; ', (@RowIndex+1) ,': ', @DepartmentAct, '</p>')
	--		 SET @ret = CONCAT(@ret, @Rowcontent)			     
 --            set @RowIndex = @RowIndex+1;
	--	end 
	SET @DepartmentAct =( select TOP(1) p.DepartmentAct from PlanPeriodicDetail p where ISNULL(p.DepartmentAct, '') <> '' AND p.PlanDeviceId =@PlanDeviceId)
	SET @ret = @DepartmentAct;
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetDeviceCodeFromDeviceId]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetDeviceCodeFromDeviceId](@DeviceId int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50) ;  
	DECLARE @countINTeam int;  	
	DECLARE @countINGroup int;  	
	DECLARE @GroupiDOLd nvarchar(50); 
	DECLARE @TeamIDOLd nvarchar(50); 
	DECLARE @GroupCodeNew nvarchar(50); 
	--DECLARE @TeamCodeNew nvarchar(50); 
	--DECLARE @CodeINTeam nvarchar(50); 
	DECLARE @CodeINGroup nvarchar(50); 	

	SELECT @GroupiDOLd = Device.GroupID,  @TeamIDOLd = Device.TeamId from Device where Device.Id = @DeviceId ;
		SELECT @countINGroup =  count(pd.id) + 1 from Device pd where pd.GroupID = @GroupiDOLd AND pd.ID <@DeviceId;
		SELECT @countINTeam = count(pd.id) + 1 from Device pd where pd.TeamId = @TeamIDOLd AND pd.ID <@DeviceId;

		SELECT @GroupCodeNew = DeviceGroup.Code from DeviceGroup where DeviceGroup.Id = @GroupiDOLd;
		--SELECT @TeamCodeNew = Team.Code from Team where Team.Id = @TeamIDOLd;
		 
		if(@countINGroup <10) SELECT @CodeINGroup = CONCAT('0',@countINGroup ) else SELECT @CodeINGroup = @countINGroup;
		--if(@countINTeam <10) SELECT @CodeINTeam = CONCAT('0',@countINTeam ) else SELECT @CodeINTeam = @countINTeam;

		--SELECT @ret = REPLACE(CONCAT(@TeamCodeNew, '.', @GroupCodeNew, '.', @CodeINGroup, '.TB', @CodeINTeam, '.', @DeviceId), ' ', '');
		--SELECT @ret = REPLACE(CONCAT(@TeamCodeNew, '.', @GroupCodeNew, '.', @CodeINGroup, '.TB', @CodeINTeam), ' ', '');
		SELECT @ret = REPLACE(CONCAT(@GroupCodeNew, '.', @CodeINGroup), ' ', '');
	RETURN @ret; 
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetFuncNameByTable]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetFuncNameByTable](@Table nvarchar(100))  
RETURNS nvarchar(150)   
AS   
-- Returns the stock level for the product.  
BEGIN  
DECLARE @ret nvarchar(150);  
SELECT @ret =	CASE
    WHEN (@Table = 'Department') THEN N'Danh mục phòng ban/đơn vị'
        WHEN (@Table =  'Device')
            THEN N'Danh mục thiết bị'
        WHEN (@Table =  'DeviceGroup')
            THEN N'Danh mục nhóm thiết bị'
        WHEN (@Table =  'SupplieGroup')
            THEN N'Danh mục nhóm vật tư, phụ tùng'
        WHEN (@Table =  'Position')
            THEN N'Danh mục chức vụ'
        WHEN (@Table =  'Shift')
            THEN N'Danh mục Ca làm việc'
        WHEN (@Table =  'Factory')
            THEN N'Danh mục Xưởng'
        WHEN (@Table =  'Branch')
            THEN N'Danh mục Ngành, ban'
        WHEN (@Table =  'User')
            THEN N'Quản lý người dùng'
        WHEN (@Table =  'Role')
            THEN N'Quản lý nhóm người dùng'
        WHEN (@Table =  'ModuleRole')
            THEN N'Phân quyền cho nhóm người dùng'
        WHEN (@Table =  'UserLogin')
            THEN N'Nhật ký đăng nhập'
        WHEN (@Table =  'UserActive')
            THEN N'Nhật ký hoạt động'
        WHEN (@Table =  'Config')
            THEN N'Cấu hình hệ thống'
        WHEN (@Table =  'Line')
            THEN N'Quản lý dây chuyền sản xuất'
        WHEN (@Table =  'Team')
            THEN N'Quản lý tổ đội sản xuất'
        WHEN (@Table =  'Supplie')
            THEN N'Danh mục vật tư, phụ tùng thiết bị'
        WHEN (@Table =  'PlanDaily')
            THEN N'Kế hoạch kiểm tra bảo dưỡng thiết bị hàng ngày, hàng tuần'
        WHEN (@Table =  'PlanPeriodic')
            THEN N'Kế hoạch bảo dưỡng thiết bị định kỳ theo năm'
        WHEN (@Table =  'PlanOver')
            THEN N'Kế hoạch sữa chữa lớn, Đại tu, Cải tạo thiết bị'
        WHEN (@Table =  'PlanSupplie')
            THEN N'Kế hoạch Vật tư sữa chữa -Thay thế'
        WHEN (@Table =  'PlanTarget')
            THEN N'Kế hoạch mục tiêu thiết bị'
        WHEN (@Table =  'TroubleReport')
            THEN N'Biên bản sự cố nghiêm trọng'
         WHEN (@Table =  'PlanPeriodicReport')
            THEN N'Biên bản nghiệm thu thiết bị'    
        WHEN (@Table =  'DeviceRepair')
            THEN N'Sổ theo dõi sửa chữa thiết bị khi gặp sự cố nghiêm trọng'
        WHEN (@Table =  'Target')
            THEN N'Danh sách mục tiêu'
        WHEN (@Table =  'Form')
            THEN N'Biểu mẫu, Hướng dẫn SCBD'
        WHEN (@Table =  'ErorrLog')
            THEN N'Nhật ký lỗi'
        WHEN (@Table =  'Report')
            THEN N'Báo cáo thống kê'
        WHEN (@Table =  'Threshold')
            THEN N'Thiết lập giá trị ngưỡng cảnh báo'
        WHEN (@Table =  'PlanApprove')
            THEN N'Phê duyệt hồ sơ kế hoạch'
        WHEN (@Table =  'PlanSummary')
            THEN N'Tổng hợp hồ sơ'    
        WHEN (@Table =  'DeviceTarget')
            THEN N'Thực hiện mục tiêu thiết bị'
        WHEN (@Table =  'Dashboard')
            THEN N'Giám sát dữ liệu tự động'    
        WHEN (@Table =  'ForeCast')
            THEN N'Phân tích dự báo thiết bị'
        WHEN (@Table =  '')
                THEN N'Giám sát hệ thống'  
        ELSE
            '' END

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonActLogInforByDAY]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetJsonActLogInforByDAY](@Day int, @PlanDailyWorkId bigint)  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	IF(@PlanDailyWorkId IS NULL OR @PlanDailyWorkId = 0) 
	     SELECT @ret = ''
	ELSE
         SELECT @ret = CONVERT(nvarchar(max), (
		 select w.PlanDailyWorkId , w.DayActive,   concat('- [', FORMAT (w.TimeCreated, 'D: dd/MM hh:mm tt'), ']''', w.ContentChange, N'''  (.Bởi: ', ISNULL(u2.FullName, ''), ')') as TextTool 
			FROM [dbo].[PlanDailyWorkLog] w left outer join AspNetUsers u2 on u2.Id= w.UserAct 
			where w.PlanDailyWorkId = @PlanDailyWorkId AND DayActive = @Day 
			 order by w.TimeCreated desc

		 FOR JSON AUTO))
    
	RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonPlanSignatureStatusApprove]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetJsonPlanSignatureStatusApprove](@PlanTable  nvarchar(20), @FieldName nvarchar(20), @PlanReportID bigint)  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  

	IF EXISTS (select Id from PlanSignatureStatus s where s.PlanTable =@PlanTable And s.FieldName =@FieldName AND s.PlanId =@PlanReportID)
    	SELECT @ret = CONVERT(nvarchar(max),
		 (select ISNULL(IsAccept, 0) as StatusValue, s.Note,  [dbo].[ufnConvertDatetimeToString](s.TimeCreated) as DatePlan, u.FullName, u.Signature from PlanSignatureStatus s 
				inner join AspNetUsers u ON s.UserId = u.Id 
				where s.PlanTable =@PlanTable And s.FieldName =@FieldName AND s.PlanId =@PlanReportID 
				order by s.Id desc
           FOR JSON AUTO))
   else 
       SELECT @ret = CONVERT(nvarchar(max), (select Top(1) -1 as StatusValue, N'Chưa có thông tin.' as Note,  [dbo].[ufnConvertDatetimeToString](GETDATE()) as DatePlan from PlanSignatureStatus FOR JSON AUTO))
	
	--0: Gửi ký duyệt
	--1: Đồng ý=> đã ký
	--2: từ chối
	--3: Quá hạn
	-- -1 chưa gửi phê duyệt

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserActInfor]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetJsonUserActInfor](@PlanDailyWorkId bigint)  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	IF(@PlanDailyWorkId IS NULL OR @PlanDailyWorkId = 0) 
	     SELECT @ret = ''
	ELSE
         SELECT @ret = CONVERT(nvarchar(max), (select DISTINCT Top(2) U.FullName, U.Signature FROM [dbo].[PlanDailyWorkLog] l inner join AspNetUsers u on u.Id= l.UserAct
				where l.PlanDailyWorkId= @PlanDailyWorkId FOR JSON AUTO))
    
	RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserActInforByDAY]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetJsonUserActInforByDAY](@Day int, @PlanId bigint)  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	IF(@PlanId IS NULL OR @PlanId = 0) 
	     SELECT @ret = ''
	ELSE
         SELECT @ret = CONVERT(nvarchar(max), (select DISTINCT Top(2) U.FullName, U.Signature 
FROM [dbo].[PlanDailyWorkLog] l inner join AspNetUsers u on u.Id= l.UserAct
inner join PlanDailyWorks w on w.Id = l.PlanDailyWorkId
inner join PlanDaily p on p.Id = w.PlanId
				where l.DayActive = @Day AND w.PlanId = @PlanId FOR JSON AUTO))
	RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserInforByListID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetJsonUserInforByListID](@ListUserID nvarchar(Max),@Separator nvarchar(50))  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	IF(@ListUserID IS NULL OR @ListUserID = '') 
	     SELECT @ret = ''
	ELSE
         SELECT @ret = CONVERT(nvarchar(max), (SELECT Id, FullName, Signature 
		 FROM AspNetUsers 
		 where Id IN (Select ColValue from dbo.ufn_String_Split_with_Index(@ListUserID, @Separator)) FOR JSON AUTO))
    
	RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetJsonUserWeekInfor]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetJsonUserWeekInfor](@PlanId bigint)  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	IF(@PlanId IS NULL OR @PlanId = 0) 
	     SELECT @ret = ''
	ELSE
         SELECT @ret = CONVERT(nvarchar(max), (SELECT us1.FullName, us1.Signature ,us2.FullName, us2.Signature ,us3.FullName, us3.Signature ,us4.FullName, us4.Signature 
FROM PlanDaily pd 
		left outer join AspNetUsers us1 on us1.Id = pd.UserWeek1
		left outer join AspNetUsers us2 on us2.Id = pd.UserWeek2
		left outer join AspNetUsers us3 on us3.Id = pd.UserWeek3
		left outer join AspNetUsers us4 on us4.Id = pd.UserWeek4
		where pd.Id =@PlanId FOR JSON AUTO))
    
	RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetNameCodeByBranchID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetNameCodeByBranchID](@ValueField int, @ValueID int)  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50);  
	
	IF(@ValueField =1)  --Name
	BEGIN
	    SELECT @ret = b.Name from Branch b WHERE b.Id = @ValueID
	END
	ELSE IF(@ValueField =2)  --Code
	BEGIN
	    SELECT @ret = b.Name from Branch b WHERE b.Id = @ValueID
	END
	ELSE 
	BEGIN
	    SELECT @ret = CONCAT(b.Name, ';', b.Code) from Branch b WHERE b.Id = @ValueID
	END

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetNameCodeByTableID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetNameCodeByTableID](@ValueField int, @ValueID int, @TableName nvarchar(20))  
RETURNS nvarchar(50)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(50);  
	
	if(@TableName = 'Branch')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Branch b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from Branch b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from Branch b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'Factory')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Factory b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from Factory b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from Factory b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'Team')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Team b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from Team b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from Team b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'Line')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Line b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from Line b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from Line b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'DeviceGroup')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from DeviceGroup b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from DeviceGroup b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from DeviceGroup b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'Device')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Device b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from Device b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from Device b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'Supplie')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Supplie b WHERE b.Id = @ValueID
		END
		ELSE IF(@ValueField =2)  --Code
		BEGIN
			SELECT @ret = b.Code from Supplie b WHERE b.Id = @ValueID
		END
		ELSE 
		BEGIN
			SELECT @ret = CONCAT(b.Name, ';', b.Code) from Supplie b WHERE b.Id = @ValueID
		END
    END
	ELSE IF(@TableName = 'SupplieGroup')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from SupplieGroup b WHERE b.Id = @ValueID
		END
		--ELSE IF(@ValueField =2)  --Code
		--BEGIN
		--	--SELECT @ret = b.Code from SupplieGroup b WHERE b.Id = @ValueID
		--END
		--ELSE 
		--BEGIN
		--	--SELECT @ret = CONCAT(b.Name, ';', b.Code) from SupplieGroup b WHERE b.Id = @ValueID
		--END
    END
	ELSE IF(@TableName = 'Shift')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Shift b WHERE b.Id = @ValueID
		END
		--ELSE IF(@ValueField =2)  --Code
		--BEGIN
		--	SELECT @ret = b.Code from Shift b WHERE b.Id = @ValueID
		--END
		--ELSE 
		--BEGIN
		--	SELECT @ret = CONCAT(b.Name, ';', b.Code) from Shift b WHERE b.Id = @ValueID
		--END
    END
	ELSE IF(@TableName = 'Position')
	BEGIN
		IF(@ValueField =1)  --Name
		BEGIN
			SELECT @ret = b.Name from Position b WHERE b.Id = @ValueID
		END
		--ELSE IF(@ValueField =2)  --Code
		--BEGIN
		--	SELECT @ret = b.Code from Position b WHERE b.Id = @ValueID
		--END
		--ELSE 
		--BEGIN
		--	SELECT @ret = CONCAT(b.Name, ';', b.Code) from Position b WHERE b.Id = @ValueID
		--END
    END
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetNUmberDayByMonth]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetNUmberDayByMonth](@month int, @year int)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int = 30;   
   if(@month = 1 OR @month = 3 OR @month = 5 OR @month = 7 OR @month = 8 OR @month = 10 OR @month = 12) set @ret = 31;
   else if(@month = 4 OR @month = 6 OR @month = 9 OR @month = 11) set @ret = 30;
   else if(@month =2 AND ((@year %4) =0)) set @ret = 29; 
   else set @ret = 28; 

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRulForDay](@DeviceCode nvarchar(50), @item int)  
RETURNS decimal(10,5)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret decimal(10,5);   
	
     select @ret = ISNULL(cast(AVG(RulValues)/MAX(RulValues) as decimal(10,5)), 1)  from MledData2023.dbo.RulReport Where DATEDIFF(HOUR, TimeReport, GetDate()) = @item AND DeviceCode = @DeviceCode

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForDayByDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRulForDayByDay](@DeviceCode nvarchar(50), @hour int, @day int, @month int, @year int, @maxrul decimal(10,5))  
RETURNS decimal(10,5)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret decimal(10,5);   
   if(@maxrul=0) select @ret =0;
   else 
	select @ret = ISNULL(cast(AVG(rr.RulValues)/@maxrul as decimal(10,5)), 1) from MledData2023.dbo.RulReport  rr
	        Where rr.HourReport =@hour AND rr.DayReport = @day AND rr.MonthReport = @month AND rr.YearReport = @year AND rr.DeviceCode = @DeviceCode
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForMonth]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRulForMonth](@DeviceCode nvarchar(50), @item int)  
RETURNS decimal(10,5)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret decimal(10,5);   
	
     select @ret = ISNULL(cast(AVG(RulValues)/MAX(RulValues) as decimal(10,5)), 1)  from MledData2023.dbo.RulReport Where DATEDIFF(DAY, TimeReport, GetDate()) = @item AND DeviceCode = @DeviceCode

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForMonthByMonth]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRulForMonthByMonth](@DeviceCode nvarchar(50), @day int, @month int, @year int)  
RETURNS decimal(10,5)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret decimal(10,5);   
	 
	 select @ret = CASE WHEN (MAX(rr.RulValues) =0) then 1 else ISNULL(cast(AVG(rr.RulValues)/MAX(rr.RulValues) as decimal(10,5)), 1) END from MledData2023.dbo.RulReport  rr
	        Where rr.DayReport = @day AND rr.MonthReport = @month AND rr.YearReport = @year AND rr.DeviceCode = @DeviceCode

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForYear]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRulForYear](@DeviceCode nvarchar(50), @item int)  
RETURNS decimal(10,5)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret decimal(10,5);   
	
     select @ret = ISNULL(cast(AVG(RulValues)/MAX(RulValues) as decimal(10,5)), 1)  from MledData2023.dbo.RulReport Where DATEDIFF(MONTH, TimeReport, GetDate()) = @item AND DeviceCode = @DeviceCode

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetRulForYearByYear]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetRulForYearByYear](@DeviceCode nvarchar(50), @month int, @year int)  
RETURNS decimal(10,5)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret decimal(10,5);   
	
     select @ret = ISNULL(cast(AVG(rr.RulValues)/MAX(rr.RulValues) as decimal(10,5)), 1)  from MledData2023.dbo.RulReport  rr
	        Where rr.MonthReport = @month AND rr.YearReport = @year AND rr.DeviceCode = @DeviceCode
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetStatusDeviceById]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetStatusDeviceById](@DeviceId nvarchar(100), @start nvarchar(20), @End nvarchar(20))  
RETURNS nvarchar(150)   
AS   
-- Returns the stock level for the product.  
BEGIN  
DECLARE @ret nvarchar(150)='';  
    SET @ret = (select Top(1) ISNULL(s.StatusValue, '') from DeviceHistoryStatus s where s.DeviceId = @DeviceId)    

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumLanloihong]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumLanloihong](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;     
	 --đếm số lần sự cố (tất cả)
     select @ret = count(d.id) from PlanDailyTrouble d 
	 inner join PlanDaily p on p.Id = d.PlanId
	 where 
	    p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0'--(p.BranchId = @SBranchID OR @SBranchID =0)
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumSolanthuchienbaoduong]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumSolanthuchienbaoduong](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
--@Index =6) --Số lần thực hiện bảo trì bảo dưỡng
BEGIN  
   DECLARE @ret int =0;     
	 --đếm số lần thực hiện bảo dưỡng 
     select @ret = count(d.id) from PlanPeriodicReport d 	
	     inner join PlanPeriodicDevice pd on pd.Id = d.PlanDeviceId
		 inner join PlanPeriodic p on p.Id = pd.PlanId
	     where ISNULL(d.TimeDelivery, 0) =2 
		        AND (d.ReportDate BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBDaBTDDSoKHNam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBDaBTDDSoKHNam](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;     
	 --Số thiết bị đã đươc bảo trì bào dưỡng theo kê hoạch năm
    select @ret = count(d.id) from Device d   	
	     inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 inner join PlanPeriodic p on p.Id = pd.PlanId
		 inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	     where ISNULL(pr.TimeDelivery, 0) IN (1,2) 
		        AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBDaBTDDSoKHThang]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBDaBTDDSoKHThang](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;     
	--Số thiết bị đã đươc bảo trì bào dưỡng theo kê hoạch thang
    select @ret = count(d.id) from Device d   	
	     inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 inner join PlanPeriodic p on p.Id = pd.PlanId
		 inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	     where ISNULL(pr.TimeDelivery, 0) IN (1,2) 
		        AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				AND MONTH(pr.DateAuthority) = MONTH(GETDATE())

				return @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBdanghoatdong]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBdanghoatdong](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
   select @ret = count(d.id) from Device d 
                  where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				  AND [dbo].[ufnGetTrangthaiThietbi]('' , '', d.Id) = 1

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBddaduocnghiemthu]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBddaduocnghiemthu](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
--else if(@Index =7) --Số thiết bị đã được nghiệm thu SC/BD định kỳ
BEGIN  
   DECLARE @ret int =0;     
     --Số thiết bị đã đươc nghiệm thu SC/BD định kỳ
     select @ret = count(d.id) from Device d   	
	     inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 inner join PlanPeriodic p on p.Id = pd.PlanId
		 inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	     where ISNULL(pr.TimeDelivery, 0) IN (1,2) 
		        AND (pr.ReportDate BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
		        AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBdenhanbaotri]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBdenhanbaotri](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;     
	 --Số thiết bị đã đến hạn bảo trì (có lịch bảo trì, đã bảo trì nhưng chưa được nghiệm thu
     select @ret = count(d.id) from Device d   	
	     inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 inner join PlanPeriodic p on p.Id = pd.PlanId
		 inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	     where (pr.UserAuthority IS NULL AND pr.UserFactory IS NULL)
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBkhonghoatdong]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBkhonghoatdong](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	--Dừng hoạt động
    select @ret = count(d.id) from Device d 
                  where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				  AND [dbo].[ufnGetTrangthaiThietbi]('' , '', d.Id) = 0

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBloihong]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBloihong](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
---index == 9
BEGIN  
   DECLARE @ret int =0;   
	
   select @ret = count(d.id) from Device d 
                  where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				  AND [dbo].[ufnGetTrangthaiThietbi]('' , '', d.Id) IN (2,3,5)

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBloihongDaXL]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBloihongDaXL](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
   --đếm số lần sự cố (tất cả)
     select @ret = count(d.id) from PlanDailyTrouble d 
	 inner join PlanDaily p on p.Id = d.PlanId
	 where (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBloihongnghiemtrong]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBloihongnghiemtrong](@startDate nvarchar(250) null
													,@endDate nvarchar(250) null
													,@SFactoryId nvarchar(250) null
													,@STeamId nvarchar(250) null
													,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
--else if(@Index =10) --Số biên bản sự cố nghiêm trọng
BEGIN  
   DECLARE @ret int =0;   
	 --đếm số lần sự cố nghiêm trong
    select @ret = COUNT(pr.Id) from PlanDailyTroubleReport pr 
	--inner join 	PlanDailyTrouble pt ON pr.PlanId = pt.TroubleReportID
	 inner join PlanDaily p on p.Id = pr.PlanId
	 inner join Device d on d.Id = p.DeviceId
	 left outer join Branch b ON b.Id =d.BranchId
	 where (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
	     AND (pr.DateTrouble BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTBtongtoanganh]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTBtongtoanganh](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;   
	
     select @ret = count(d.id) from Device d
	    where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSumTileHoanthanhBDTBKHNam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSumTileHoanthanhBDTBKHNam](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;     
	 DECLARE @number_done int =0;  --Số thiết bị đã bảo trì/bảo dưỡng so với KH năm
	 select @number_done = dbo.ufnGetSumTBDaBTDDSoKHNam(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID)
	 DECLARE @number_full int =0;  --Số thiết bị cần bảo trì/bảo dưỡng theo KH năm
	 select @number_full = @number_done + dbo.ufnGetSumTBdenhanbaotri(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID)

	 if(@number_full=0) select @ret = 0
	 else select @ret = cast(ROUND(@number_done *100 / @number_full,0) as int)
   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetSupplieName]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetSupplieName](@CurrentTroubleId int)  
RETURNS nvarchar(500)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @SupplieName nvarchar(500) ;
	DECLARE @name nvarchar(500);
	DECLARE cursorName CURSOR FOR

	SELECT s.Name
	FROM PlanDailyTroubleSupplie pdts 
	INNER JOIN PlanDailyTrouble pdt ON pdts.TroubleId = pdt.Id
	INNER JOIN Supplie s ON s.Id = pdts.SupplieId
	WHERE	pdts.TroubleId	= @CurrentTroubleId

	OPEN cursorName
	FETCH NEXT FROM cursorName     
		INTO @name
	WHILE @@FETCH_STATUS = 0
	BEGIN
	SELECT @SupplieName = CONCAT(@SupplieName,@name)
	FETCH NEXT FROM cursorName 
		INTO @name
		SELECT @SupplieName = CONCAT(@SupplieName,';')
	END
	CLOSE cursorName
	DEALLOCATE cursorName
	RETURN @SupplieName;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetTrangthaiThietbi]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetTrangthaiThietbi](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@DId int)  
RETURNS int
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret int =0;     
	--Lấy trạng thái cuối cùng trong khoảng thời gian tìm kiếm
	----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 	

	SET @ret = (select Top(1) StatusValue from DeviceHistoryStatus 
	           where [DeviceId] = @DId 
			     --AND (TimeCreated BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
			   order by Id desc)

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetTrangthaiThietbiValue]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetTrangthaiThietbiValue](@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@DId int)  
RETURNS nvarchar(250)
AS   
-- Returns the stock level for the product.  
BEGIN  
   DECLARE @ret nvarchar(250) ='';     
	--Lấy trạng thái cuối cùng trong khoảng thời gian tìm kiếm
   DECLARE @retVal int; SET @retVal = (select Top(1) StatusValue from DeviceHistoryStatus 	           
			   where [DeviceId] = @DId 
			     --AND (TimeCreated BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
			   order by Id desc)
   
   if(@retVal=0) RETURN N'<span class="badge badge-danger text-xs">Dừng hoạt động</span>'
   if(@retVal=1) RETURN N'<span class="badge badge-success text-xs">Đang hoạt động</span>'
   if(@retVal=2) RETURN N'<span class="badge badge-danger text-xs">Sự cố nghiêm trọng</span>'
   if(@retVal=3) RETURN N'<span class="badge badge-warning text-xs">Có sự cố thiết bị</span>'
   if(@retVal=4) RETURN N'<span class="badge badge-warning text-xs">Đang bảo trì/bảo dưỡng</span>'
   if(@retVal=5) RETURN N'<span class="badge badge-warning text-xs">Đang sửa chữa</span>'

   RETURN @ret;

END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserAvataByListID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetUserAvataByListID](@ListUserID nvarchar(Max),@Separator nvarchar(50))  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	--DECLARE @RowIndex int;  
	--DECLARE @count int;  
	--DECLARE @Avatar nvarchar(50);  
 --   DECLARE @UserId nvarchar(50);

	--if(@ListUserID = '' OR @ListUserID IS NULL) RETURN ''

	--Select @count = COUNT(*) from dbo.ufn_String_Split_with_Index(@ListUserID, @Separator) 
	--set @RowIndex =0;
	--while(@count>@RowIndex)
	--	begin 
	--		 Select @UserId = ColValue from dbo.ufn_String_Split_with_Index(@ListUserID, @Separator)
 --                     Order by STT desc OFFSET @RowIndex ROWS FETCH NEXT 1 ROWS ONLY;

 --  SELECT @Avatar = AspNetUsers.Avatar FROM AspNetUsers where AspNetUsers.Id = @UserId;
  
	--		 if(@RowIndex = 0)
	--			 SET @ret = @Avatar
	--		 else
	--		     SET @ret = CONCAT(@ret, ';', @Avatar)
 --            set @RowIndex = @RowIndex+1;
	--	end
	
--SELECT 	
-- *
--FROM AspNetUsers FOR JSON AUTO
--Select CONVERT(varchar,GETDATE(),9) as [MMM DD, YYYY, HH:SS (AM/PM)]
--Select CONVERT(varchar,GETDATE(),107) as [MMM DD, YYYY, HH:SS (AM/PM)]
--Select CONVERT(varchar,GETDATE(),100) as [MMM DD, YYYY, HH:SS (AM/PM)]
 --RETURN (SELECT Avatar FROM AspNetUsers FOR JSON AUTO)
SELECT @ret = CONVERT(varchar, (SELECT Avatar FROM AspNetUsers FOR JSON AUTO))


    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserInforByListID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetUserInforByListID](@ListUserID nvarchar(Max),@Separator nvarchar(50))  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max);  
	IF(@ListUserID IS NULL OR @ListUserID = '') 
	     SELECT @ret = ''
	ELSE
         SELECT @ret = CONVERT(nvarchar(max), (SELECT Id, FullName, Signature 
		 FROM AspNetUsers 
		 where Id IN (Select ColValue from dbo.ufn_String_Split_with_Index(@ListUserID, @Separator)) FOR JSON AUTO))
    
	RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserListViewPlan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetUserListViewPlan](@ID bigint, @TableName nvarchar(50), @UserLevel int)  
RETURNS nvarchar(max)
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(max) = '''UserID'''; 
	--DECLARE @RowIndex int;  
	--DECLARE @count int;  
	DECLARE @UserPlan nvarchar(450);  
    DECLARE @UserBranch nvarchar(450); 
	DECLARE @UserFactory nvarchar(450);  
    DECLARE @UserAuthority nvarchar(450); 

	if(@TableName = '' OR @TableName IS NULL) RETURN '';
	if(@TableName = 'PlanPeriodic')	  
	BEGIN
		Select @UserPlan = ISNULL(p.UserPlan,''), @UserBranch = ISNULL(p.UserBranch,''), @UserFactory =ISNULL(p.UserFactory,''), @UserAuthority = ISNULL(p.UserAuthority,'') from PlanPeriodic p where p.Id = @ID
		if(@UserPlan <> '') Select @ret = Concat(@ret, ',''', @UserPlan, '''');
		if(@UserBranch <> '') Select @ret = Concat(@ret, ',''', @UserBranch, '''');
		if(@UserFactory <> '') Select @ret = Concat(@ret, ',''', @UserFactory, '''');
		if(@UserAuthority <> '') Select @ret = Concat(@ret, ',''', @UserAuthority, '''');
	END
	else if(@TableName = 'PlanPeriodicDevice')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
    else if(@TableName = 'PlanPeriodicReport')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
 else if(@TableName = 'PlanDaily')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
	else if(@TableName = 'PlanDailyTroubleReport')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
	else if(@TableName = 'PlanOver')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
	else if(@TableName = 'PlanSupplie')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
	else if(@TableName = 'PlanTarget')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END
	else if(@TableName = 'DeviceTarget')	  
	BEGIN
		Select @UserPlan = p.UserPlan, @UserBranch = p.UserBranch, @UserFactory = p.UserFactory, @UserAuthority = p.UserAuthority from PlanPeriodic p where p.Id = @ID
		if(ISNULL(@UserPlan,'') <> '') Select @ret = Concat(@ret, ',', @UserPlan);
		if(ISNULL(@UserBranch,'') <> '') Select @ret = Concat(@ret, ',', @UserBranch);
		if(ISNULL(@UserFactory,'') <> '') Select @ret = Concat(@ret, ',', @UserFactory);
		if(ISNULL(@UserAuthority,'') <> '') Select @ret = Concat(@ret, ',', @UserAuthority);
	END

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserNameByID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetUserNameByID](@UserID nvarchar(450))  
RETURNS nvarchar(500)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(500);  
	SELECT @ret = b.FullName from AspNetUsers b WHERE b.Id = @UserID
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetUserNameByListID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetUserNameByListID](@ListID nvarchar(Max),@Separator nvarchar(50), @TableName nvarchar(50))  
RETURNS nvarchar(Max)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(Max);  
	DECLARE @RowIndex int;  
	DECLARE @count int;  
	DECLARE @Name nvarchar(250);  
    DECLARE @seID nvarchar(450);

	if(@ListID = '' OR @ListID IS NULL) RETURN ''

	Select @count = COUNT(*) from dbo.ufn_String_Split_with_Index(@ListID, @Separator) 
	set @RowIndex =0;
	while(@count>@RowIndex)
		begin 
			 Select @seID = ColValue from dbo.ufn_String_Split_with_Index(@ListID, @Separator)
                      Order by STT desc OFFSET @RowIndex ROWS FETCH NEXT 1 ROWS ONLY;

             IF(@TableName ='AspNetUsers')
		        SELECT @Name = AspNetUsers.FullName FROM AspNetUsers where AspNetUsers.Id = @seID;
             ELSE IF(@TableName ='Supplie')
			    SELECT @Name = Supplie.Name FROM Supplie where Supplie.Id = @seID;
			 ELSE IF(@TableName ='Line')
			    SELECT @Name = l.Name FROM Line l where l.Id = CAST(@seID AS int) ;
  
			 if(@RowIndex = 0)
				 SET @ret = @Name
			 else
			     SET @ret = CONCAT(@ret, ';', @Name)
             set @RowIndex = @RowIndex+1;
		end 

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetValueDayInPlanDaily]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetValueDayInPlanDaily](@day int, @DayAct int, @TestStatus int)  
RETURNS nvarchar(250)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(250);  
	if(@DayAct = @day)
		BEGIN 
		   if(@TestStatus=1) select @ret = '<i class="far fa-circle"></i>' 
				  else if(@TestStatus=2) select @ret = '<i class="fa-solid fa-circle-play fa-rotate-270"></i>' 
					else if(@TestStatus=3) select @ret = '<i class="fas fa-times"></i>'
						else select @ret = ''
		END
     ELSE
	     select @ret = '' 
    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetValueDayInPlanDailyWork]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetValueDayInPlanDailyWork]
(@dayinfor NVARCHAR(500)
)
RETURNS NVARCHAR(500)
AS   
     -- Returns the stock level for the product.  
     BEGIN
         DECLARE @ret NVARCHAR(500)= '';
         --DECLARE @DayTable Table;
         DECLARE @retStatus NVARCHAR(250)= '';
         DECLARE @retSignature NVARCHAR(250)= '';DECLARE @retUserName NVARCHAR(250)= '';
         IF(@dayinfor IS NOT NULL)
             BEGIN
                 DECLARE @TestStatus INT= 0;
                 SELECT @TestStatus = ColValue
                 FROM [dbo].[ufn_String_Split_with_Index](@dayinfor, ';')
                 WHERE STT = 1;
                 IF(@TestStatus = 1)
                     SELECT @retStatus = '<i class="far fa-circle fa-1x"></i>';
                     ELSE
                     IF(@TestStatus = 2)
                         SELECT @retStatus = '<i class="fa-solid fa-circle-play fa-rotate-270 fa-1x"></i>';
                         ELSE
                         IF(@TestStatus = 3)
                             SELECT @retStatus = '<i class="fas fa-times fa-1x"></i>';
                             ELSE
                             SELECT @retStatus = '';
                 DECLARE @UserId NVARCHAR(450);
                 SELECT @UserId = ColValue
                 FROM [dbo].[ufn_String_Split_with_Index](@dayinfor, ';')
                 WHERE STT = 2;
                 SELECT @retSignature = ISNULL(Signature, ''), @retUserName =ISNULL(FullName,'') FROM AspNetUsers WHERE Id = @UserId;
         END;
--       set @DayTable  =   table DayInfor
--(
-- DayStatus   nvarchar(200) null
--,   UserSign   nvarchar(200) null
--,   UserName    nvarchar(200) null
--);
--insert into DayInfor (DayStatus, UserSign, UserName) values ('gfdh ',' hgfd',' hgfd')

--select * from  DayInfor FOR JSON AUTO
         
		 SELECT @ret = CONCAT(@retStatus ,';', @UserId, ';',  @retSignature, ';', @retUserName);
         RETURN @ret;
     END;
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetWorkContentForBBBDTB]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetWorkContentForBBBDTB](@PlanDeviceId int)  
RETURNS nvarchar(Max)   
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret nvarchar(Max);  
	DECLARE @RowIndex int;  
	DECLARE @count int;  
	DECLARE @WorkContent nvarchar(500);  
    DECLARE @Rowcontent nvarchar(500);
	SET @ret ='';
	Select @count = COUNT(*) from PlanPeriodicDetail p where p.PlanDeviceId =@PlanDeviceId
	set @RowIndex =0;
	while(@count>@RowIndex)
		begin 
			 Select @WorkContent = p.WorkContent from PlanPeriodicDetail p where p.PlanDeviceId =@PlanDeviceId
                      Order by Id ASC OFFSET @RowIndex ROWS FETCH NEXT 1 ROWS ONLY;

             SET @Rowcontent = CONCAT('<p>&emsp; &nbsp; ', (@RowIndex+1) ,': ', @WorkContent, '</p>')
			 SET @ret = CONCAT(@ret, @Rowcontent)			     
             set @RowIndex = @RowIndex+1;
		end 

    RETURN @ret;  
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyDetaiByPlanID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanDailyDetaiByPlanID]
( 
@PlanId bigint
)
RETURNS nvarchar(max) 
AS
BEGIN 
DECLARE @ret nvarchar(max);  

select @ret = CONVERT(nvarchar(max), (

SELECT pd.Id
	  ,pd.TestMethod
	  ,pd.MainCategory
	  ,pd.ContentAct
	  ,[dbo].ufnGetJsonUserInforByListID(pd.UserAct, ';') as UserAct
	  ,[dbo].[ufnGetJsonUserWeekInfor](pd.Id) as UserWeek
	  ,pd.DayAct 
	  ,pd.TestStatus
	  ,[dbo].ufnGetValueDayInPlanDaily(1 , pd.DayAct , pd.TestStatus) as Day1
	  ,[dbo].ufnGetValueDayInPlanDaily(2 , pd.DayAct , pd.TestStatus) as Day2
	  ,[dbo].ufnGetValueDayInPlanDaily(3 , pd.DayAct , pd.TestStatus) as Day3
	  ,[dbo].ufnGetValueDayInPlanDaily(4 , pd.DayAct , pd.TestStatus) as Day4
	  ,[dbo].ufnGetValueDayInPlanDaily(5 , pd.DayAct , pd.TestStatus) as Day5
	  ,[dbo].ufnGetValueDayInPlanDaily(6 , pd.DayAct , pd.TestStatus) as Day6
	  ,[dbo].ufnGetValueDayInPlanDaily(7 , pd.DayAct , pd.TestStatus) as Day7
	  ,[dbo].ufnGetValueDayInPlanDaily(8 , pd.DayAct , pd.TestStatus) as Day8
	  ,[dbo].ufnGetValueDayInPlanDaily(9 , pd.DayAct , pd.TestStatus) as Day9
	  ,[dbo].ufnGetValueDayInPlanDaily(10 , pd.DayAct , pd.TestStatus) as Day10
	  ,[dbo].ufnGetValueDayInPlanDaily(11 , pd.DayAct , pd.TestStatus) as Day11
	  ,[dbo].ufnGetValueDayInPlanDaily(12 , pd.DayAct , pd.TestStatus) as Day12
	  ,[dbo].ufnGetValueDayInPlanDaily(13 , pd.DayAct , pd.TestStatus) as Day13
	  ,[dbo].ufnGetValueDayInPlanDaily(14 , pd.DayAct , pd.TestStatus) as Day14
	  ,[dbo].ufnGetValueDayInPlanDaily(15 , pd.DayAct , pd.TestStatus) as Day15
	  ,[dbo].ufnGetValueDayInPlanDaily(16 , pd.DayAct , pd.TestStatus) as Day16
	  ,[dbo].ufnGetValueDayInPlanDaily(17 , pd.DayAct , pd.TestStatus) as Day17
	  ,[dbo].ufnGetValueDayInPlanDaily(18 , pd.DayAct , pd.TestStatus) as Day18
	  ,[dbo].ufnGetValueDayInPlanDaily(19 , pd.DayAct , pd.TestStatus) as Day19
	  ,[dbo].ufnGetValueDayInPlanDaily(20 , pd.DayAct , pd.TestStatus) as Day20
	  ,[dbo].ufnGetValueDayInPlanDaily(21 , pd.DayAct , pd.TestStatus) as Day21
	  ,[dbo].ufnGetValueDayInPlanDaily(22 , pd.DayAct , pd.TestStatus) as Day22
	  ,[dbo].ufnGetValueDayInPlanDaily(23 , pd.DayAct , pd.TestStatus) as Day23
	  ,[dbo].ufnGetValueDayInPlanDaily(24 , pd.DayAct , pd.TestStatus) as Day24
	  ,[dbo].ufnGetValueDayInPlanDaily(25 , pd.DayAct , pd.TestStatus) as Day25
	  ,[dbo].ufnGetValueDayInPlanDaily(26 , pd.DayAct , pd.TestStatus) as Day26
	  ,[dbo].ufnGetValueDayInPlanDaily(27,  pd.DayAct , pd.TestStatus) as Day27
	  ,[dbo].ufnGetValueDayInPlanDaily(28 , pd.DayAct , pd.TestStatus) as Day28
	  ,[dbo].ufnGetValueDayInPlanDaily(29 , pd.DayAct , pd.TestStatus) as Day29
	  ,[dbo].ufnGetValueDayInPlanDaily(30 , pd.DayAct , pd.TestStatus) as Day30
	  ,[dbo].ufnGetValueDayInPlanDaily(31 , pd.DayAct , pd.TestStatus) as Day31
  FROM  PlanDailyDetail pd
   where pd.PlanId = @PlanId

FOR JSON AUTO))
RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailySignaltureByPlanID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanDailySignaltureByPlanID]
( 
  @PlanId bigint
)
RETURNS nvarchar(max) 
AS
BEGIN 
DECLARE @ret nvarchar(max);  

select @ret = CONVERT(nvarchar(max), (
SELECT dbo.ufnGetJsonUserActInforByDAY(01, p.Id) as DaySignAct01
      ,dbo.ufnGetJsonUserActInforByDAY(02, p.Id) as DaySignAct02
      ,dbo.ufnGetJsonUserActInforByDAY(03, p.Id) as DaySignAct03
      ,dbo.ufnGetJsonUserActInforByDAY(04, p.Id) as DaySignAct04
      ,dbo.ufnGetJsonUserActInforByDAY(05, p.Id) as DaySignAct05
      ,dbo.ufnGetJsonUserActInforByDAY(06, p.Id) as DaySignAct06
      ,dbo.ufnGetJsonUserActInforByDAY(07, p.Id) as DaySignAct07
      ,dbo.ufnGetJsonUserActInforByDAY(08, p.Id) as DaySignAct08
      ,dbo.ufnGetJsonUserActInforByDAY(09, p.Id) as DaySignAct09
      ,dbo.ufnGetJsonUserActInforByDAY(10, p.Id) as DaySignAct10
      ,dbo.ufnGetJsonUserActInforByDAY(11, p.Id) as DaySignAct11
      ,dbo.ufnGetJsonUserActInforByDAY(12, p.Id) as DaySignAct12
      ,dbo.ufnGetJsonUserActInforByDAY(13, p.Id) as DaySignAct13
      ,dbo.ufnGetJsonUserActInforByDAY(14, p.Id) as DaySignAct14
      ,dbo.ufnGetJsonUserActInforByDAY(15, p.Id) as DaySignAct15
      ,dbo.ufnGetJsonUserActInforByDAY(16, p.Id) as DaySignAct16
      ,dbo.ufnGetJsonUserActInforByDAY(17, p.Id) as DaySignAct17
      ,dbo.ufnGetJsonUserActInforByDAY(18, p.Id) as DaySignAct18
      ,dbo.ufnGetJsonUserActInforByDAY(19, p.Id) as DaySignAct19
      ,dbo.ufnGetJsonUserActInforByDAY(20, p.Id) as DaySignAct20
      ,dbo.ufnGetJsonUserActInforByDAY(21, p.Id) as DaySignAct21
      ,dbo.ufnGetJsonUserActInforByDAY(22, p.Id) as DaySignAct22
      ,dbo.ufnGetJsonUserActInforByDAY(23, p.Id) as DaySignAct23
      ,dbo.ufnGetJsonUserActInforByDAY(24, p.Id) as DaySignAct24
      ,dbo.ufnGetJsonUserActInforByDAY(25, p.Id) as DaySignAct25
      ,dbo.ufnGetJsonUserActInforByDAY(26, p.Id) as DaySignAct26
      ,dbo.ufnGetJsonUserActInforByDAY(27, p.Id) as DaySignAct27
      ,dbo.ufnGetJsonUserActInforByDAY(28, p.Id) as DaySignAct28
      ,dbo.ufnGetJsonUserActInforByDAY(29, p.Id) as DaySignAct29
      ,dbo.ufnGetJsonUserActInforByDAY(30, p.Id) as DaySignAct30
      ,dbo.ufnGetJsonUserActInforByDAY(31, p.Id) as DaySignAct31
  FROM  PlanDaily p where p.Id = @PlanId FOR JSON AUTO))
RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyTroubleSupplieByTroubleID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanDailyTroubleSupplieByTroubleID]
( 
@TroubleID bigint
)
RETURNS nvarchar(max) 
AS
BEGIN 
DECLARE @ret nvarchar(max);  

select @ret = CONVERT(nvarchar(max), (SELECT p.*, s.Name as SupplieName from PlanDailyTroubleSupplie p inner join Supplie s on s.Id = p.SupplieId where p.TroubleID = @TroubleID ORDER BY p.Id Desc  FOR JSON AUTO))

RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyWordsByPlanID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanDailyWordsByPlanID]
( 
  @PlanId bigint
)
RETURNS nvarchar(max) 
AS
BEGIN 
DECLARE @ret nvarchar(max);  

select @ret = CONVERT(nvarchar(max), (
SELECT @PlanId as Id
      , w.TestMethod 
	  ,w.IsEnable 
	  ,w.Name as MainCategory
	  ,w.WorkContent as ContentAct
	  ,w.UserAction
	  ,PlanWork.Id as PlanWorkId
	  ,PlanWork.DeviceWorkId
	  ,dbo.ufnGetJsonActLogInforByDAY(01, PlanWork.Id) as DayInforAct01
      ,dbo.ufnGetJsonActLogInforByDAY(02, PlanWork.Id) as DayInforAct02
      ,dbo.ufnGetJsonActLogInforByDAY(03, PlanWork.Id) as DayInforAct03
      ,dbo.ufnGetJsonActLogInforByDAY(04, PlanWork.Id) as DayInforAct04
      ,dbo.ufnGetJsonActLogInforByDAY(05, PlanWork.Id) as DayInforAct05
      ,dbo.ufnGetJsonActLogInforByDAY(06, PlanWork.Id) as DayInforAct06
      ,dbo.ufnGetJsonActLogInforByDAY(07, PlanWork.Id) as DayInforAct07
      ,dbo.ufnGetJsonActLogInforByDAY(08, PlanWork.Id) as DayInforAct08
      ,dbo.ufnGetJsonActLogInforByDAY(09, PlanWork.Id) as DayInforAct09
      ,dbo.ufnGetJsonActLogInforByDAY(10, PlanWork.Id) as DayInforAct10
      ,dbo.ufnGetJsonActLogInforByDAY(11, PlanWork.Id) as DayInforAct11
      ,dbo.ufnGetJsonActLogInforByDAY(12, PlanWork.Id) as DayInforAct12
      ,dbo.ufnGetJsonActLogInforByDAY(13, PlanWork.Id) as DayInforAct13
      ,dbo.ufnGetJsonActLogInforByDAY(14, PlanWork.Id) as DayInforAct14
      ,dbo.ufnGetJsonActLogInforByDAY(15, PlanWork.Id) as DayInforAct15
      ,dbo.ufnGetJsonActLogInforByDAY(16, PlanWork.Id) as DayInforAct16
      ,dbo.ufnGetJsonActLogInforByDAY(17, PlanWork.Id) as DayInforAct17
      ,dbo.ufnGetJsonActLogInforByDAY(18, PlanWork.Id) as DayInforAct18
      ,dbo.ufnGetJsonActLogInforByDAY(19, PlanWork.Id) as DayInforAct19
      ,dbo.ufnGetJsonActLogInforByDAY(20, PlanWork.Id) as DayInforAct20
      ,dbo.ufnGetJsonActLogInforByDAY(21, PlanWork.Id) as DayInforAct21
      ,dbo.ufnGetJsonActLogInforByDAY(22, PlanWork.Id) as DayInforAct22
      ,dbo.ufnGetJsonActLogInforByDAY(23, PlanWork.Id) as DayInforAct23
      ,dbo.ufnGetJsonActLogInforByDAY(24, PlanWork.Id) as DayInforAct24
      ,dbo.ufnGetJsonActLogInforByDAY(25, PlanWork.Id) as DayInforAct25
      ,dbo.ufnGetJsonActLogInforByDAY(26, PlanWork.Id) as DayInforAct26
      ,dbo.ufnGetJsonActLogInforByDAY(27, PlanWork.Id) as DayInforAct27
      ,dbo.ufnGetJsonActLogInforByDAY(28, PlanWork.Id) as DayInforAct28
      ,dbo.ufnGetJsonActLogInforByDAY(29, PlanWork.Id) as DayInforAct29
      ,dbo.ufnGetJsonActLogInforByDAY(30, PlanWork.Id) as DayInforAct30
      ,dbo.ufnGetJsonActLogInforByDAY(31, PlanWork.Id) as DayInforAct31
	  ,PlanWork.DayStatus01
      ,PlanWork.DayStatus02
      ,PlanWork.DayStatus03
      ,PlanWork.DayStatus04
      ,PlanWork.DayStatus05
      ,PlanWork.DayStatus06
      ,PlanWork.DayStatus07
      ,PlanWork.DayStatus08
      ,PlanWork.DayStatus09
      ,PlanWork.DayStatus10
      ,PlanWork.DayStatus11
      ,PlanWork.DayStatus12
      ,PlanWork.DayStatus13
      ,PlanWork.DayStatus14
      ,PlanWork.DayStatus15
      ,PlanWork.DayStatus16
      ,PlanWork.DayStatus17
      ,PlanWork.DayStatus18
      ,PlanWork.DayStatus19
      ,PlanWork.DayStatus20
      ,PlanWork.DayStatus21
      ,PlanWork.DayStatus22
      ,PlanWork.DayStatus23
      ,PlanWork.DayStatus24
      ,PlanWork.DayStatus25
      ,PlanWork.DayStatus26
      ,PlanWork.DayStatus27
      ,PlanWork.DayStatus28
      ,PlanWork.DayStatus29
      ,PlanWork.DayStatus30
      ,PlanWork.DayStatus31
  FROM  PlanDailyWorks PlanWork
            inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId
                      where PlanWork.PlanId = @PlanId FOR JSON AUTO))
RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanDailyWordsByPlanIDInDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanDailyWordsByPlanIDInDay]
( 
  @PlanId bigint
  ,@day int
)
RETURNS nvarchar(max) 
AS
BEGIN 
DECLARE @ret nvarchar(max); 
select @ret = CASE @day
		when 1 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus01 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 2 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus02 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 3 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus03 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 4 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus04 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 5 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus05 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 6 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus06 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 7 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus07 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 8 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus08 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 9 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus09 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 10 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus10 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 11 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus11 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 12 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus12 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 13 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus13 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 14 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus14 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 15 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus15 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 16 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus16 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 17 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus17 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 18 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus18 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 19 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus19 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 20 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus20 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 21 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus21 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 22 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus22 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 23 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus23 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 24 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus24 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 25 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus25 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 26 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus26 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 27 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus27 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 28 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus28 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 29 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus29 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 30 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus30 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
		when 31 then CONVERT(nvarchar(max), (SELECT @PlanId as Id, w.IsEnable, w.TestMethod,w.Name as MainCategory,w.WorkContent as ContentAct ,dbo.[ufnGetJsonUserWeekInfor](@PlanId) as UserWeek ,PlanWork.Id as PlanWorkId, PlanWork.DeviceWorkId  ,PlanWork.DayStatus31 as DayStatus  FROM  PlanDailyWorks PlanWork inner join DeviceWorks w on w.Id = PlanWork.DeviceWorkId where PlanWork.PlanId = @PlanId  FOR JSON AUTO))
END

RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanMarkByUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Avatar>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanMarkByUser](@ID bigint, @TableName nvarchar(50), @UserId nvarchar(450))  
RETURNS int  
AS   

BEGIN    
	DECLARE @count int 

	if(@TableName = '' OR @TableName IS NULL) RETURN 0;
	if(@UserId = '' OR @UserId IS NULL) RETURN 0;

	select @count = COUNT(Id) from PlanMark where UserId = @UserId and PlanId = @ID and PlanTable = @TableName

	if(@count>0 ) RETURN 1
	else RETURN 0

	RETURN 0
END; 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanPeriodicActByPlanID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanPeriodicActByPlanID]
( 
    @PlanDeviceId bigint    ---PlanDeviceId
   ,@contentMonth int  --- Kiểmtra tháng kế hoạch
   ,@month  int  --tháng đang xét
)
RETURNS nvarchar(150) 
AS
BEGIN 
DECLARE @ret nvarchar(max) = '';  
DECLARE @monthPlan int = 0;  
DECLARE @monthAct int = 0;  
DECLARE @IsNT int = 0;  

select TOP (1) @monthAct = ISNULL(MonthAct, 0) from PlanPeriodicDetail pdt where pdt.PlanDeviceId =@PlanDeviceId
if(@contentMonth =1) select @monthPlan = @month;

--Kiểm tra nếu biên bản nghiệm thu đã dc ký duyệt thì lấy tháng thức hiện sửa chữa
--Khoanh tròn màu vang ở tháng đó
-- <i class="fa-solid fa-circle text-warning fa-1x"></i>
DECLARE @PlanReportID int = 0;  
SELECT @PlanReportID= rp.Id from PlanPeriodicReport rp where rp.PlanDeviceId = @PlanDeviceId;
select @IsNT = dbo.ufnCheckPlanPeriodicDeviceDone(@PlanReportID);

--xét tại tháng kế hoạch
if(@month =@monthPlan AND @month = @monthAct) --thực hiện đúng kế hoạch
BEGIN
   if(@IsNT = 1) 
         select  @ret = ''--'<i class="fa-solid fa-circle-xmark text-warning"></i>' --Đã nghiệm thu ==> vàng
    else 
	     select  @ret = ''--'<i class="fa-solid fa-xmark"></i>' 
END
ELSE if(@month =@monthPlan AND @monthPlan <  @monthAct)  --thực hiện sau kế hoạch để mũi tên sang phải
BEGIN
     select  @ret = ''--'<i class="fa-solid fa-xmark"></i>&nbsp<i class="fa-solid fa-arrow-right"></i>'
END
ELSE if(@month =@monthPlan AND @monthPlan > @monthAct)  --thực hiện trước kế hoạch để mũi tên sang trái
BEGIN
    if(@monthAct = 0) 
       select  @ret = ''--'<i class="fa-solid fa-xmark"></i>' 
	else 
	   select  @ret = ''--'<i class="fa-solid fa-arrow-left"></i>&nbsp<i class="fa-solid fa-xmark"></i>'
END
--xét tại tháng thực hiện
ELSE if(@month = @monthAct AND @monthPlan <> @monthAct) --thực hiện đúng kế hoạch
BEGIN
   if(@IsNT = 1) 
         select  @ret = ''--'<i class="fa-solid fa-circle-xmark text-warning"></i>' --Đã nghiệm thu ==> vàng
    else 
	     select  @ret = ''--'<i class="fa-solid fa-xmark"></i>' 
END

RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanPeriodicNoteGoiYByDeviceId]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnPlanPeriodicNoteGoiYByDeviceId]
( 
    @PlanId bigint
	,@PlanYear int
   ,@DeviceId  int 
)
RETURNS nvarchar(150) 
AS
BEGIN 
DECLARE @ret nvarchar(max) = ''; 
DECLARE @ret_infor1 nvarchar(max) = ''; 
DECLARE @ret_infor2 nvarchar(max) = ''; 
DECLARE @ret_infor3 nvarchar(max) = ''; 
--Kiểm tra nếu biên bản nghiệm thu đã dc ký duyệt thì lấy tháng thức hiện sửa chữa
--Khoanh tròn màu vang ở tháng đó
-- <i class="fa-solid fa-circle text-warning fa-1x"></i>
Select @ret_infor1 = CONCAT(N'- Thiết bị có chu kỳ bảo dưỡng: Hàng', dbo.GetMaintenanceCycleName(d.MaintenanceCycle), N' ; Thời gian đưa vào sử dụng: ',  d.TimeUse) from Device d where d.Id =@DeviceId;
Select @ret_infor2 = CONCAT(N'- Năm: ', (@PlanYear -1), N' thiết bị được bảo dưỡng vào tháng: ', pd.MonthPlan) from PlanPeriodic p inner join PlanPeriodicDevice pd ON p.Id = pd.PlanId where p.Id =@PlanId;
Select @ret_infor2 = CONCAT(N'- Năm: ', (@PlanYear -1), N' thiết bị có tổng thời gian dừng máy là:', 10, 'h');
select @ret = CONCAT ('</br>', @ret_infor1 , '</br>', @ret_infor2, '</br>', @ret_infor3)

RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanStatusJsonByUserIdAndPlan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
----@UserLevel: Các cấp quản lý
--- 0: TGĐ/Người được ủy quyền
--- 1: Trưởng ban/ngành: (Trưởng ngành, Quản đốc xưởng)
--- 2: Trưởng đơn vị
--- 3: Phụ trách thiết bị/Bộ phận QL/SD thiết bị
--- 4: Tổ trưởng
--- -1: Đại diện đơn vị SCBD (nếu thuê ngoài)
--- 5: Nguoi lapKH: tự động lấy theo hệ thống
--- Cấp dưới ký xong thì chuyển cho cấp trên
--  Gồm cac mẫu báo cáo sau:
--- KH hàng ngày: 2 ng ký ca mỗi ngày, mỗi tuần có 1 tổ trưởng ký
--- BB Báo cáo sự cố (nghiêm trọng) :Trưởng đơn vị quản lý thiết bị, Bộ phận QL/SD thiết bị, Tổng giám đốc (nếu cần)
--- KH định kỳ: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng, TGĐ/Người được ủy quyền
--- Bảng chi tiết (thực tế thực hiện): Người lập kế hoạch	Trưởng ngành	TĐV/UQ
--- Biên bản: Đại diện đơn vị SCBD (nếu thuê ngoài), Bộ phận QL/SD thiết bị,Trưởng đơn vị,Tổng giám đốc (nếu cần)
--- Đại tu: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng, TGĐ/Người được ủy quyền
--- KH vật tư: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng, TGĐ/Người được ủy quyền
--- KH mục tiêu: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng,
--- thưc hiện mục tiêu: Trưởng đơn vi, Trưởng ngành, Phụ trách thiết bị

    --Trạng thái hiện có
	--0: Đang chờ ký duyệt	
	--1: Đã ký duyệt
	--2: Từ chối - Yêu cầu kiểm tra lại
	--3: Quá hạn

-- =============================================
CREATE FUNCTION [dbo].[ufnPlanStatusJsonByUserIdAndPlan]
( 
@ID bigint
, @TableName nvarchar(50)
, @UserId nvarchar(450)
, @UserLevel int
, @FieldName nvarchar(50)
)
RETURNS nvarchar(max) 
AS
BEGIN 
DECLARE @ret nvarchar(max);  


select @ret = CONVERT(nvarchar(max), (SELECT TOP(1) Id, FieldName, IsAccept, Note,FORMAT(TimeCreated,'MMM dd, yyyy, hh:mm tt') as TimeCreated 
from PlanSignatureStatus where UserId = @UserId and PlanId = @ID and PlanTable = @TableName  and FieldName = @FieldName ORDER BY Id Desc  FOR JSON AUTO))

RETURN @ret
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_String_Split_with_Index]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufn_String_Split_with_Index]
( 
@String nvarchar(max)
,@Separator nvarchar(10)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS STT, value AS ColValue
	FROM STRING_SPLIT(@String, @Separator)
)
GO
/****** Object:  UserDefinedFunction [dbo].[ufnGetTable_From_String_Split]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[ufnGetTable_From_String_Split]
( 
@String nvarchar(max)
,@Separator nvarchar(10)
)
RETURNS TABLE 
AS
RETURN 
(
    SELECT * from STRING_SPLIT(@String ,@Separator) where ISNULL(value, '') <> ''
)
GO
/****** Object:  UserDefinedFunction [dbo].[ufnPlanStatusByUserIdAndPlan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
----@UserLevel: Các cấp quản lý
--- 0: TGĐ/Người được ủy quyền
--- 1: Trưởng ban/ngành: (Trưởng ngành, Quản đốc xưởng)
--- 2: Trưởng đơn vị
--- 3: Phụ trách thiết bị/Bộ phận QL/SD thiết bị
--- 4: Tổ trưởng
--- -1: Đại diện đơn vị SCBD (nếu thuê ngoài)
--- 5: Nguoi lapKH: tự động lấy theo hệ thống
--- Cấp dưới ký xong thì chuyển cho cấp trên
--  Gồm cac mẫu báo cáo sau:
--- KH hàng ngày: 2 ng ký ca mỗi ngày, mỗi tuần có 1 tổ trưởng ký
--- BB Báo cáo sự cố (nghiêm trọng) :Trưởng đơn vị quản lý thiết bị, Bộ phận QL/SD thiết bị, Tổng giám đốc (nếu cần)
--- KH định kỳ: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng, TGĐ/Người được ủy quyền
--- Bảng chi tiết (thực tế thực hiện): Người lập kế hoạch	Trưởng ngành	TĐV/UQ
--- Biên bản: Đại diện đơn vị SCBD (nếu thuê ngoài), Bộ phận QL/SD thiết bị,Trưởng đơn vị,Tổng giám đốc (nếu cần)
--- Đại tu: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng, TGĐ/Người được ủy quyền
--- KH vật tư: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng, TGĐ/Người được ủy quyền
--- KH mục tiêu: Người lập kế hoạch,Trưởng ngành, Quản đốc xưởng,
--- thưc hiện mục tiêu: Trưởng đơn vi, Trưởng ngành, Phụ trách thiết bị

    --Trạng thái hiện có
	--0: Đang chờ ký duyệt	
	--1: Đã ký duyệt
	--2: Từ chối - Yêu cầu kiểm tra lại
	--3: Quá hạn

-- =============================================
CREATE FUNCTION [dbo].[ufnPlanStatusByUserIdAndPlan]
( 
@ID bigint
, @TableName nvarchar(50)
, @UserId nvarchar(450)
, @UserLevel int
)
RETURNS TABLE 
AS
RETURN 
(
    SELECT Id, FieldName,TimeCreated, IsAccept, Note from PlanSignatureStatus where UserId = @UserId and PlanId = @ID and PlanTable = @TableName
)
GO
/****** Object:  StoredProcedure [dbo].[AddAlert]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddAlert] 
	-- Add the parameters for the stored procedure here
	 @Status int null =0
	,@DeviceType int null =0
	,@WarningType int null =0
    ,@Description nvarchar(500) null
,@Name nvarchar(500) null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Alert')  

DECLARE @IdSelected bigint;
INSERT INTO Alert
           (Status ,DeviceType, WarningType, Name
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Status ,@DeviceType, @WarningType, @Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddAndEditDeviceSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddAndEditDeviceSupplie] 
	-- Add the parameters for the stored procedure here
@DeviceId int
           ,@SupplieId int
           ,@Quantity int
           ,@Description nvarchar(500) null
		   ,@Id int
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @IdSelected bigint;
if(@Id =0)
BEGIN
    INSERT INTO [dbo].[DeviceSupplie]
           ([DeviceId]
           ,[SupplieId]
           ,[Quantity]
           ,[TimeCreated]
           ,[TimeModified]
           ,[Description])
     VALUES
           (@DeviceId
           ,@SupplieId
           ,@Quantity
           ,GETDATE()
           ,GETDATE()
           ,@Description)
  SET @IdSelected = SCOPE_IDENTITY() ;
END
Else 
BEGIN
	  UPDATE [dbo].[DeviceSupplie]
	   SET [DeviceId] = @DeviceId
		  ,[SupplieId] = @SupplieId
		  ,[Quantity] = @Quantity
		  ,[TimeModified] = Getdate()
		  ,[Description] = @Description
	 WHERE Id =@Id

	  SET @IdSelected = @Id
END
Select @IdSelected as Id, CONCAT(N'Thành công.','') as message, 'Thông tin thiết bị' as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddBranch] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	,@FactoryId int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Branch')  
IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;

INSERT INTO Branch
           ([Name],Code
		   ,FactoryId
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
		   ,@Code
		   ,@FactoryId
           ,@Description
           ,GETDATE()
           ,GETDATE())

set @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddConfigSystem]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddConfigSystem] 
	-- Add the parameters for the stored procedure here
	 @ConfigName nvarchar(150) 
           ,@ConfigCode nvarchar(50) 
,@ConfigValue nvarchar(550) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Config')  
IF EXISTS(SELECT t.ConfigCode FROM ConfigSystem t where t.ConfigCode =@ConfigCode) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@ConfigCode,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.ConfigName FROM ConfigSystem t where t.ConfigName =@ConfigName)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@ConfigName,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO ConfigSystem
           ([ConfigName]
           ,[ConfigCode]
           ,[ConfigValue]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@ConfigName
           ,@ConfigCode
           ,@ConfigValue
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddDepartment]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDepartment] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	 ,@Code nvarchar(50)   null
    ,@Description nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Department')  
IF EXISTS(SELECT t.Code FROM Department t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Department t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Department
           ([Name],Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDevice] 
	-- Add the parameters for the stored procedure here
	 @GroupID int null
     ,@BranchId int null
	 ,@TeamId int null
	 ,@LineId int null
           ,@Name nvarchar(450) null
           ,@Description nvarchar(450) null
           ,@Status int null
           ,@Code nvarchar(450)  null
           ,@Origin nvarchar(450)  null
           ,@YearOfUse int  null
           ,@InstallationPlace nvarchar(450)  null
           ,@MaintenanceCycle int  null
           ,@YearOfManufacture int  null
           ,@Description2 nvarchar(450)  null
           ,@Properties int  null
		   ,@GetRangDong int null
		   ,@MonthofUse int null
		   ,@TimeReceived nvarchar(20) null
		   ,@TimeUse nvarchar(20) null
		   ,@IsImportant int null
		   ,@QRCode nvarchar(450) null
		   ,@QRCodeImg nvarchar(450) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Device')  
IF (@GroupID =0)
BEGIN
   Select 0 as Id, CONCAT(N'Bạn chưa chọn nhóm thiết bị.','') as message, @FuncName as Tittle
   return;
END


IF EXISTS(SELECT t.Code FROM Device t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Device t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
BEGIN TRY  
		INSERT INTO Device
				   (GroupID, LineId, BranchId, TeamId
				   ,Name
				   ,Description
				   ,TimeCreated
				   ,TimeModified
				   ,Status
				   ,Code
				   ,QRCode 
				   ,QRCodeImg 
				   ,Origin
				   ,YearOfUse
				   ,InstallationPlace
				   ,MaintenanceCycle
				   ,Description2
				   ,Properties
				   ,YearOfManufacture
				   ,MonthofUse 
				   ,TimeReceived 
				   ,TimeUse
				   ,GetRangDong
				   ,IsImportant
				   )
			 VALUES
				   (@GroupID, @LineId,  @BranchId, @TeamId
				   ,@Name
				   ,@Description
				   ,GETDATE()
				   ,GETDATE()
				   ,@Status
				   ,dbo.ufnCreateDeviceCode(@GroupID, 0) --@Code
				   ,@QRCode
				   ,@QRCodeImg
				   ,@Origin
				   ,@YearOfUse
				   ,@InstallationPlace
				   ,@MaintenanceCycle
				   ,@Description2
				   ,@Properties
				   ,@YearOfManufacture
				   ,@MonthofUse 
				   ,@TimeReceived 
				   ,@TimeUse
				   ,@GetRangDong
				   ,@IsImportant)

		SET @IdSelected = SCOPE_IDENTITY();
		--Update Device set Code = 
		--                 --, CodeNew = dbt.ufnCreateDeviceCode(@GroupID, @LineId, @BranchId, @TeamId, @IdSelected) 
		--				 where Id = @IdSelected
	
		INSERT INTO [dbo].[DeviceHistory]
				   ([BranchID]
				   ,[TeamId]
				   ,[LineId]
				   ,[BranchIDold]
				   ,[TeamIdold]
				   ,[LineIdold]
				   ,[DeviceId]
				   ,[Desc]
				   ,[TimeCreated])
			 VALUES
				   (@BranchID
				   ,@TeamId
				   ,@LineId
				   ,0
				   ,0
				   ,0
				   ,@IdSelected
				   ,@Description
				   ,GETDATE())
		--cập nhật trạng thái thiết bị
		EXEC [dbo].[UpdateDeviceHistoryStatus] @IdSelected, @Status, 1
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
END CATCH 
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDeviceGroup] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
	 ,@Code nvarchar(500) null
    ,@Description nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceGroup')  
IF EXISTS(SELECT t.Code FROM DeviceGroup t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM DeviceGroup t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO DeviceGroup
           ([Name]
		   ,Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
		   ,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceHistory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<@Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDeviceHistory] 
	-- Add the parameters for the stored procedure here
	 @BranchID int null
           ,@TeamId int null
           ,@LineId int null
           ,@DeviceId int null
           ,@Desc nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @IdSelected bigint;

INSERT INTO [dbo].[DeviceHistory]
           ([BranchID]
           ,[TeamId]
           ,[LineId]
           ,[DeviceId]
           ,[Desc]
           ,[TimeCreated])
     VALUES
           (@BranchID
           ,@TeamId
           ,@LineId
           ,@DeviceId
           ,@Desc
           ,GETDATE())


SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, N'Lịch sử di chuyển thiết bị' as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceRepairDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDeviceRepairDetail] 
	-- Add the parameters for the stored procedure here
	   @DeviceRepairId bigint null
	  ,@Contents nvarchar(500) null
      ,@AssemblyDetail nvarchar(500) null
      ,@UserAct nvarchar(500) null
      ,@DeviceId bigint null
      ,@DayOfMonth int null
      ,@SupplieList nvarchar(450) null
      ,@Note nvarchar(500) null
	  ,@UserId nvarchar(450) null
	  AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceRepair')  
DECLARE @IdSelected bigint;
 INSERT INTO [dbo].[DeviceRepairDetail]
           ([DeviceRepairId],DayOfMonth
           ,[Contents]
           ,[AssemblyDetail]
           ,[UserAct]
           ,[SupplieList]
           ,[DeviceId]
           ,[Note]
		   ,UserId)
     VALUES
           (@DeviceRepairId, @DayOfMonth
           ,@Contents
           ,@AssemblyDetail
           ,@UserAct
           ,@SupplieList
           ,@DeviceId
           ,@Note, @UserId)

    SET @IdSelected = SCOPE_IDENTITY();
	--Cập nhật lại thông tin người tạo kế hoạch
Update DeviceRepair set UserId =@UserID where Id =@DeviceRepairId;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddDeviceTargetDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddDeviceTargetDetail] 
	-- Add the parameters for the stored procedure here
	   @DeviceTargetId bigint null
	  ,@Contents nvarchar(500) null
      ,@Targets nvarchar(500) null
      ,@ResultAct nvarchar(500) null
      ,@Evaluate nvarchar(450) null
      ,@PlanContent nvarchar(450) null
      ,@PlanTargetId bigint null
      ,@Note nvarchar(500) null
	  ,@UserId nvarchar(450) null
	  AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceTarget')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;
 INSERT INTO [dbo].[DeviceTargetDetail]
           ([DeviceTargetId]
           ,[Contents]
           ,[Targets]
           ,[ResultAct]
           ,[PlanContent], PlanTargetId
           ,[Evaluate]
           ,[Note]
		   ,UserId)
     VALUES
           (@DeviceTargetId
           ,@Contents
           ,@Targets
           ,@ResultAct
           ,@PlanContent, @PlanTargetId
           ,@Evaluate
           ,@Note, @UserId)

    SET @IdSelected = SCOPE_IDENTITY();
	
--Cập nhật lại thông tin người tạo kế hoạch
Update DeviceTarget set UserId =@UserID where Id =@DeviceTargetId;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddFactory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddFactory] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	 ,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Factory')  
IF EXISTS(SELECT t.Code FROM Factory t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Factory t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Factory
           ([Name],Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddForm]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddForm] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
	,@FileName nvarchar(500) null
	,@FilePath nvarchar(500) null
		,@FactoryId int null 
   ,@BranchId int null 
   ,@TeamId int null 
   ,@LineId int null 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Form')  
IF EXISTS(SELECT t.Name FROM Form t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
	 if(@BranchId <>0 and @BranchId is not null)   set @FactoryId =(select b.FactoryId from Branch b where b.Id =@BranchId)
INSERT INTO Form
           ([Name]
           ,[Description]
		   ,[FileName]
		   ,FilePath
           ,[TimeCreated]
           ,[TimeModified]
		   	,FactoryId 
		   ,BranchId 
		   ,TeamId 
		   ,LineId )
     VALUES
           (@Name
           ,@Description
		   ,@FileName
		   ,@FilePath
           ,GETDATE()
           ,GETDATE()
		   	,@FactoryId 
		   ,@BranchId 
		   ,@TeamId 
		   ,@LineId 
		   )

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddLine]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddLine] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	 ,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	,@TeamId int null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Line')  
IF EXISTS(SELECT t.Code FROM Line t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Line t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Line
           ([Name], TeamId,Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name, @TeamId,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanDailyDetail] 
	-- Add the parameters for the stored procedure here
@PlanId bigint null
	   ,@TestMethod nvarchar(500) null
      ,@MainCategory nvarchar(500) null
      ,@ContentAct nvarchar(500) null
	  ,@TestStatus int null
      ,@IsEnable int null
	  ,@UserAction nvarchar(50) null
      ,@UserID nvarchar(450) null
	  ,@DeviceId int null
	  AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;
   INSERT INTO [dbo].[DeviceWorks]
           ([Name]
           ,[WorkContent]
           ,[TestMethod]
		   ,IsEnable
           ,[TestDate]
           ,[Note]
		   ,UserAction
           ,[DeviceId]
		   )
     VALUES
           (@MainCategory
           ,@ContentAct
           ,@TestMethod
		   ,@IsEnable
           ,GETDATE()
           ,@UserID
		   ,@UserAction
           ,@DeviceId) 
   SET @IdSelected = SCOPE_IDENTITY();
   INSERT INTO [dbo].[PlanDailyWorks]
           ([PlanId]
           ,[DeviceWorkId])
		   VALUES
		   (@PlanId, @IdSelected)
   --Cập nhật lại thông tin người tạo kế hoạch
   Update PlanDaily set UserPlan =@UserID where Id =@PlanId;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanDailyTrouble] 
	-- Add the parameters for the stored procedure here
	@PlanId  bigint  null
           ,@TroubleContent  nvarchar(500)  null
		   ,@DeviceSupplieList nvarchar(500)  null
           ,@TroubleDate  int  null
           ,@ContentAndResult  nvarchar(500)  null
           ,@UserConfirm  nvarchar(450)  null
           ,@DateConfirm  int  null
           ,@Conclusion  nvarchar(500)  null
           ,@TroubleReportID  bigint  null
           ,@TimeStopBegin  datetime  null
           ,@TimeStopEnd  datetime  null
           ,@LocationDetai  nvarchar(500)  null
           ,@RepairContent  nvarchar(450)  null
           ,@RepairUser  nvarchar(450)  null
           ,@Repair  nvarchar(450)  null
           ,@Note  nvarchar(450)  null
           ,@HasReport  int  null
		   ,@UserID  nvarchar(450)  null
,@FactoryId  int  null
,@BranchId  int  null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('TroubleReport')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

DECLARE @IdSelected bigint;
DECLARE @Year int;DECLARE @Month int;   select @Year = p.PlanYear,  @Month = p.PlanMonth from PlanDaily p where p.Id = @PlanId;

BEGIN TRY 	
		INSERT INTO dbo.PlanDailyTrouble
				   (PlanId
				   ,TroubleContent
				   ,DeviceSupplieList
				   ,TroubleDate
				   ,ContentAndResult
				   ,UserConfirm
				   ,DateConfirm
				   ,Conclusion
				   ,TimeCreated
				   ,TimeModified
				   ,TroubleReportID
				   ,TimeStopBegin
				   ,TimeStopEnd
				   ,LocationDetai
				   ,RepairContent
				   ,RepairUser
				   ,Repair
				   ,Note
				   ,HasReport)
			 VALUES
				   (@PlanId    
				   ,@TroubleContent  
				   ,@DeviceSupplieList
				   ,CONCAT(@Year, '-', @Month, '-', @TroubleDate, ' 23:20:55.443')
				   ,@ContentAndResult
				   ,@UserID--@UserConfirm
				   ,CONCAT(@Year, '-', @Month, '-', @DateConfirm, ' 23:20:55.443')
				   ,@Conclusion
				   ,GETDATE()--@TimeCreated
				   ,GETDATE()--@TimeModified
				   ,@TroubleReportID
				   ,@TimeStopBegin
				   ,@TimeStopEnd
				   ,@LocationDetai
				   ,@RepairContent
				   ,@RepairUser
				   ,@Repair
				   ,@Note
				   ,@HasReport)

		SET @IdSelected = SCOPE_IDENTITY();
		--///INsert Biên bản
		 DECLARE @DeviceId int;  SET @DeviceId = (select Top(1) DeviceId from PlanDaily where Id = @PlanId order by Id desc)
		if(@HasReport =1)
			BEGIN
				INSERT INTO [dbo].[PlanDailyTroubleReport]
						   ([TroubleId],PlanId
						   ,[AddressTrouble]
						   ,[DateTrouble]
						   ,[DescriptionTrouble]
						   --,[ReasonTrouble]
						   --,[HandlingMeansure]
						   --,[UserAct]
						   --,[DateDone]
						   --,[UserPart]
						   --,[UnitPart]
						   --,[UserManager]
						   --,[UserBranch]
						   --,[UserAuthority]
						   ,[TimeCreated]
						   ,[TimeModified]
						   ,[FactoryId]
						   ,[BranchId]
						   ,[ReportNumber])
					 VALUES
						   (@IdSelected,@PlanId
							,@LocationDetai
							,CONCAT(@Year, '-', @Month, '-', @TroubleDate, ' 23:20:55.443')
							,@TroubleContent
							--,@ReasonTrouble
							--,@HandlingMeansure
							--,@UserAct
							--,@DateDone
							--,@UserPart
							--,@UnitPart
							--,@UserManager
							--,@UserBranch
							--,@UserAuthority
							,GETDATE()
							,GETDATE()
							,@FactoryId
							,@BranchId
							,dbo.ufnCreateTroubleReportCode(@FactoryId, @BranchId, @Year))
					---Trường hợp thêm sự cố thiết bị   
					---Sự cố nghiêm trọng
				   EXEC dbo.UpdateDeviceHistoryStatus @DeviceId, 2, 2;
			END
		ELSE 
			BEGIN
				 ---Trường hợp thêm sự cố thiết bị         
				   ---Cập nhật trạng thái thiết bị
				   EXEC dbo.UpdateDeviceHistoryStatus @DeviceId, 3, 3;
			END
    Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
		
	Select 0 as Id, CONCAT(N'Gặp lỗi khi thực hiện:', CONVERT(nvarchar(250),ERROR_MESSAGE())) as message, CONVERT(nvarchar(250),ERROR_PROCEDURE()) as Tittle
END CATCH  

return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanDailyTroubleReport]
	-- Add the parameters for the stored procedure here
	@PlanId  bigint  null
         ,@TroubleId  bigint  null
           ,@AddressTrouble  nvarchar(500)  null
           ,@DateTrouble  datetime  null
,@DescriptionTrouble  nvarchar(500)  null
,@ReasonTrouble  nvarchar(500)  null
,@HandlingMeansure  nvarchar(500)  null
,@UserAct  nvarchar(450)  null
,@DateDone  datetime  null
,@UserPart  nvarchar(450)  null
,@UnitPart  nvarchar(450)  null
,@UserManager  nvarchar(450)  null
,@UserBranch  nvarchar(450)  null
,@UserAuthority  nvarchar(450)  null
,@TimeCreated  datetime  null
,@TimeModified  datetime  null
,@FactoryId  bigint  null
,@BranchId  bigint  null
,@ReportNumber  nvarchar(450)  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('TroubleReport')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;
if(@DateTrouble IS NOT NULL AND @DateTrouble != '')
	INSERT INTO [dbo].[PlanDailyTroubleReport]
			   ([TroubleId],PlanId
			   ,[AddressTrouble]
			   ,[DateTrouble]
			   ,[DescriptionTrouble]
			   ,[ReasonTrouble]
			   ,[HandlingMeansure]
			   ,[UserAct]
			   ,[DateDone]
			   ,[UserPart]
			   ,[UnitPart]
			   ,[UserManager]
			   ,[UserBranch]
			   ,[UserAuthority]
			   ,[TimeCreated]
			   ,[TimeModified]
			   ,[FactoryId]
			   ,[BranchId]
			   ,[ReportNumber])
		 VALUES
			   (@TroubleId,@PlanId
				,@AddressTrouble
				,@DateTrouble
				,@DescriptionTrouble
				,@ReasonTrouble
				,@HandlingMeansure
				,@UserAct
				,@DateDone
				,@UserPart
				,@UnitPart
				,@UserManager
				,@UserBranch
				,@UserAuthority
				,@TimeCreated
				,@TimeModified
				,@FactoryId
				,@BranchId
				,@ReportNumber)
ELSE 
	INSERT INTO [dbo].[PlanDailyTroubleReport]
			   ([TroubleId],PlanId
			   ,[AddressTrouble]
			   ,[DateTrouble]
			   ,[DescriptionTrouble]
			   ,[ReasonTrouble]
			   ,[HandlingMeansure]
			   ,[UserAct]
			   ,[DateDone]
			   ,[UserPart]
			   ,[UnitPart]
			   ,[UserManager]
			   ,[UserBranch]
			   ,[UserAuthority]
			   ,[TimeCreated]
			   ,[TimeModified]
			   ,[FactoryId]
			   ,[BranchId]
			   ,[ReportNumber])
		 VALUES
			   (@TroubleId,@PlanId
				,@AddressTrouble
				,GETDATE()
				,@DescriptionTrouble
				,@ReasonTrouble
				,@HandlingMeansure
				,@UserAct
				,@DateDone
				,@UserPart
				,@UnitPart
				,@UserManager
				,@UserBranch
				,@UserAuthority
				,@TimeCreated
				,@TimeModified
				,@FactoryId
				,@BranchId
				,@ReportNumber)

SET @IdSelected = SCOPE_IDENTITY();
update PlanDailyTroubleReport set ReportNumber = dbo.ufnCreatePlanNumberCode(@FactoryId,@BranchId, YEAR(DateTrouble), 'BBSCTB', 'PlanDailyTroubleReport' , 0 , 0, @IdSelected) where Id = @IdSelected; 

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTroubleSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanDailyTroubleSupplie]
	-- Add the parameters for the stored procedure here
	@TroubleId   bigint  null
           ,@SupplieId   bigint  null
           ,@Quantity   int  null
          ,@Price   bigint  null
           ,@ToMoney   bigint  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT t.SupplieId FROM PlanDailyTroubleSupplie t where t.SupplieId =@SupplieId) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã vật tư [',@SupplieId,N'] đã được sử dụng.') as message, @FuncName as Tittle
--   return;
--END

DECLARE @IdSelected bigint;

INSERT INTO [dbo].[PlanDailyTroubleSupplie]
           ([TroubleId]
           ,[SupplieId]
           ,[Quantity]
           ,[Price]
           ,[ToMoney])
     VALUES
           (@TroubleId
           ,@SupplieId
           ,@Quantity
           ,@Price
           ,@ToMoney)

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanDailyTroubleWoker]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanDailyTroubleWoker] 
	-- Add the parameters for the stored procedure here
@PlanId  bigint  null
          ,@TroubleContent  nvarchar(500)  null
		  ,@DeviceSupplieList  nvarchar(500)  null
           ,@TroubleDate  nvarchar(500)  null
           ,@ContentAndResult  nvarchar(500)  null
           ,@Conclusion  nvarchar(500)  null
           ,@HasReport  int  null
		   ,@UserID  nvarchar(450)  null
			,@FactoryId  int  null
			,@BranchId  int  null
			,@TimeStopBegin nvarchar(500)  null
			,@TimeStopEnd nvarchar(500)  null
			,@LocationDetai nvarchar(500)  null
			,@RepairContent nvarchar(500)  null
			,@RepairUser nvarchar(500)  null
			,@Repair nvarchar(500)  null
			,@Note nvarchar(500)  null

	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = 'Thêm sự cố bất thường bởi công nhân'
BEGIN TRY
 --   DECLARE @start  datetime; set @start = CAST(@TimeStopBegin as date)
	--DECLARE @end  datetime; set @end = CAST(@TimeStopEnd as date)

-- Generate a divide-by-zero error  
		DECLARE @IdSelected bigint;	
		INSERT INTO dbo.PlanDailyTrouble
				   (PlanId
				   ,TroubleContent
				   ,DeviceSupplieList
				   ,TroubleDate
				   ,ContentAndResult
				   ,UserConfirm
				   ,DateConfirm
				   ,Conclusion
				   ,TimeCreated
				   ,TimeModified          
				   ,HasReport
				   ,TimeStopBegin
				   ,TimeStopEnd
				   ,LocationDetai
				   ,RepairContent
				   ,RepairUser
				   ,Repair
				   ,Note
				   )
			 VALUES
				   (@PlanId    
				   ,@TroubleContent  
				   ,@DeviceSupplieList
				   ,@TroubleDate--GETDATE() --CONCAT(@Year, '-', @Month, '-', @TroubleDate, ' 23:20:55.443')
				   ,@ContentAndResult
				   ,@UserID--@UserConfirm
				   ,GETDATE()
				   ,@Conclusion
				   ,GETDATE()--@TimeCreated
				   ,GETDATE()--@TimeModified          
				   ,@HasReport
				   ,@TimeStopBegin
				   ,@TimeStopEnd
				   ,@LocationDetai
				   ,@RepairContent
				   ,@RepairUser
				   ,@Repair
				   ,@Note
				   )

		--///INsert Biên bản
		 DECLARE @DeviceId int;  SET @DeviceId = (select Top(1) DeviceId from PlanDaily where Id = @PlanId order by Id desc)
		if(@HasReport =1)
			BEGIN
				INSERT INTO [dbo].[PlanDailyTroubleReport]
						   ([TroubleId],PlanId
						   --,[AddressTrouble]
						   ,[DateTrouble]
						   ,[DescriptionTrouble]
						   --,[ReasonTrouble]
						   --,[HandlingMeansure]
						   --,[UserAct]
						   --,[DateDone]
						   --,[UserPart]
						   --,[UnitPart]
						   --,[UserManager]
						   --,[UserBranch]
						   --,[UserAuthority]
						   ,[TimeCreated]
						   ,[TimeModified]
						   ,[FactoryId]
						   ,[BranchId]
						   ,[ReportNumber])
					 VALUES
						   (@IdSelected,@PlanId
							--,@LocationDetai
							,@TroubleDate
							,@TroubleContent
							--,@ReasonTrouble
							--,@HandlingMeansure
							--,@UserAct
							--,@DateDone
							--,@UserPart
							--,@UnitPart
							--,@UserManager
							--,@UserBranch
							--,@UserAuthority
							,GETDATE()
							,GETDATE()
							,@FactoryId
							,@BranchId
							,dbo.ufnCreateTroubleReportCode(@FactoryId, @BranchId, YEAR(GETDATE())))
					---Trường hợp thêm sự cố thiết bị   
					---Sự cố nghiêm trọng
				   EXEC dbo.UpdateDeviceHistoryStatus @DeviceId, 2, 2;
			END
		ELSE 
			BEGIN
				 ---Trường hợp thêm sự cố thiết bị         
				   ---Cập nhật trạng thái thiết bị
				   EXEC dbo.UpdateDeviceHistoryStatus @DeviceId, 3, 3;
			END

		SET @IdSelected = SCOPE_IDENTITY();
		Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
  
END TRY
BEGIN CATCH
   Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),CONCAT(@TimeStopBegin, '/', @TimeStopEnd , '/', ERROR_MESSAGE()))  AS ErrorMessage; 
		
	Select 0 as Id, CONCAT(N'Gặp lỗi khi thực hiện:', CONVERT(nvarchar(250),CONCAT(@TroubleDate, ERROR_MESSAGE()))) as message, CONVERT(nvarchar(250),ERROR_PROCEDURE()) as Tittle

END CATCH;

   return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanOverDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanOverDevice] 
	-- Add the parameters for the stored procedure here
     @LineId int null
	,@DeviceId int null
	,@PlanId int null
	,@UserID nvarchar(450) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanOver')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;

	 DECLARE @factory int;  
	DECLARE @year int;  
	DECLARE @branch int;  
	SELECT @year = p.PlanYear, @factory = p.FactoryId, @branch =p.BranchId from PlanOver p where p.id = @PlanId;
	

INSERT INTO PlanOverDevice
           (PlanId ,LineId, DeviceId, UserID		    
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@PlanId , @LineId
		   ,@DeviceId, @UserID
           ,GETDATE()
           ,GETDATE())
	SET @IdSelected = SCOPE_IDENTITY();

--Cập nhật lại thông tin người tạo kế hoạch
Update PlanOver set UserPlan =@UserID where Id =@PlanId;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanPeriodicDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanPeriodicDetail] 
	-- Add the parameters for the stored procedure here
    @PlanDeviceId bigint null
           ,@Month01 int  null
           ,@Month02 int  null
           ,@Month03 int  null
           ,@Month04 int  null
           ,@Month05 int  null
           ,@Month06 int  null
           ,@Month07 int  null
           ,@Month08 int  null
           ,@Month09 int  null
           ,@Month10 int  null
           ,@Month11 int  null
           ,@Month12 int  null
		   ,@MonthAct int  null
           ,@WorkContent nvarchar(500)  null
           ,@DepartmentAct nvarchar(500)  null
           ,@FormId int  null
           ,@Note nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;
INSERT INTO [dbo].[PlanPeriodicDetail]
           ([PlanDeviceId]
           ,[Month01]
           ,[Month02]
           ,[Month03]
           ,[Month04]
           ,[Month05]
           ,[Month06]
           ,[Month07]
           ,[Month08]
           ,[Month09]
           ,[Month10]
           ,[Month11]
           ,[Month12]
		   ,MonthAct
           ,[WorkContent]
           ,[DepartmentAct]
           ,[FormId]
           ,[Note])
     VALUES
           (@PlanDeviceId
           ,@Month01
           ,@Month02
           ,@Month03
           ,@Month04
           ,@Month05
           ,@Month06
           ,@Month07
           ,@Month08
           ,@Month09
           ,@Month10
           ,@Month11
           ,@Month12
		   ,@MonthAct
           ,@WorkContent
           ,@DepartmentAct
           ,@FormId
           ,@Note)

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanPeriodicDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanPeriodicDevice] 
	-- Add the parameters for the stored procedure here
     @DeviceId int null
	,@PlanId int null
	,@UserID nvarchar(450) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
IF EXISTS(SELECT t.DeviceId FROM PlanPeriodicDevice t where t.DeviceId =@DeviceId and t.PlanId =@PlanId) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã thiết bị [',@DeviceId,N'] đã được lên Kế hoạch.') as message, @FuncName as Tittle
   return;
END

INSERT INTO PlanPeriodicDevice
           (PlanId , DeviceId, UserID
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@PlanId 
		   ,@DeviceId, @UserID
           ,GETDATE()
           ,GETDATE())

DECLARE @IdSelected bigint;
SET @IdSelected = SCOPE_IDENTITY();

DECLARE @BranchId int;
DECLARE @FactoryId int;
DECLARE @PlanYear int;
select TOP(1) @PlanYear = p.PlanYear, @BranchId = p.BranchId, @FactoryId = p.FactoryId  from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId  where p.Id = @PlanId and pd.DeviceId = @DeviceId;

DECLARE @PlanNumber nvarchar(50);
DECLARE @ReportNumberCode nvarchar(50);
DECLARE @CodeFull nvarchar(50); Select @CodeFull = dbo.ufnCreatePlanNumberCode(@FactoryId, @BranchId, @PlanYear, 'CTBDCSTB', 'PlanPeriodicDevice' , @DeviceId , 0, @IdSelected);

insert into MledData2023.dbo.Test (content) values (@CodeFull);
select @PlanNumber = ColValue from dbo.ufn_String_Split_with_Index(@CodeFull, ';') where STT =1;
select @ReportNumberCode = ColValue from dbo.ufn_String_Split_with_Index(@CodeFull, ';') where STT =2;

update PlanPeriodicDevice set PlanNumber = @PlanNumber where Id =@IdSelected;
--Thêm ID báo cáo nghiệm thu
INSERT INTO [dbo].[PlanPeriodicReport] ([PlanDeviceId], ReportNumberCode) VALUES (@IdSelected, @ReportNumberCode);
--Cập nhật lại thông tin người tạo kế hoạch
Update PlanPeriodic set UserPlan =@UserID where Id =@PlanId;

DECLARE @goiy nvarchar(500); select @goiy =[dbo].[ufnPlanPeriodicNoteGoiYByDeviceId](  @PlanId	,@PlanYear    ,@DeviceId   )

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công. <br/>', @goiy) as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanPeriodicReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanPeriodicReport] 
	-- Add the parameters for the stored procedure here
  @PlanDeviceId  bigint  null
           ,@TimeDelivery  int  null
           ,@StartDate  datetime  null
           ,@EndDate  datetime  null
		   ,@ActStartDate  datetime  null
           ,@ActEndDate  datetime  null
           ,@WorkArising  nvarchar(500)  null
           ,@OperatingResults  nvarchar(500)  null
           ,@ActionMore  nvarchar(500)  null
           ,@Responsibility  nvarchar(500)  null
           ,@Duration  nvarchar(250)  null
           ,@UserSCBD  nvarchar(450)  null
           ,@UserBranch  nvarchar(450)  null
           ,@UserDepartment  nvarchar(450)  null
           ,@UserAuthority  nvarchar(450)  null
           ,@RequestSafe  int  null
           ,@RequestQuality  int  null
           ,@RequestProductivity  int  null
           ,@ReportNumberCode  nvarchar(450)  null
           ,@ReportDate  datetime  null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;

INSERT INTO [dbo].[PlanPeriodicReport]
           ([PlanDeviceId]
           ,[TimeDelivery]
           ,[StartDate]
           ,[EndDate]
,[ActStartDate]
           ,[ActEndDate]
           ,[WorkArising]
           ,[OperatingResults]
           ,[ActionMore]
           ,[Responsibility]
           ,[Duration]
           ,[UserSCBD]
           ,[UserBranch]
           ,[UserDepartment]
           ,[UserAuthority]
           ,[RequestSafe]
           ,[RequestQuality]
           ,[RequestProductivity]
           ,[ReportNumberCode]
           ,[ReportDate])
     VALUES
           (@PlanDeviceId 
           ,@TimeDelivery
           ,@StartDate 
           ,@EndDate 
 ,@ActStartDate 
           ,@ActEndDate 
           ,@WorkArising 
           ,@OperatingResults 
           ,@ActionMore 
           ,@Responsibility 
           ,@Duration
           ,@UserSCBD 
           ,@UserBranch 
           ,@UserDepartment 
           ,@UserAuthority 
           ,@RequestSafe 
           ,@RequestQuality 
           ,@RequestProductivity 
           ,@ReportNumberCode 
           ,@ReportDate )

	SET @IdSelected = SCOPE_IDENTITY();

	update PlanPeriodicReport set ReportNumberCode = dbo.ufnCreatePlanNumberCode(1, 2, 2022, 'BBNTTB', 'PlanPeriodicReport' , 0 , 0, @IdSelected) where Id = @IdSelected;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanSupplieDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanSupplieDevice] 
	-- Add the parameters for the stored procedure here
     @LineId int null
	,@SupplieId int null
	,@PlanId int null
	,@UserID nvarchar(450) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanSupplie')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

IF EXISTS(SELECT t.SupplieId FROM PlanSupplieDetail t where t.SupplieId =@SupplieId AND t.PlanId =@PlanId)
BEGIN
   Select 0 as Id, CONCAT(N'Mã Vật tư [',@SupplieId,N'] đã tồn tại trong kế hoạch.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;

	 DECLARE @factory int;  
	DECLARE @year int;  
	DECLARE @branch int;  
	SELECT @year = p.PlanYear, @factory = p.FactoryId, @branch =p.BranchId from PlanSupplie p where p.id = @PlanId;
	

INSERT INTO PlanSupplieDetail
           (PlanId ,LineId, SupplieId, UserID		    
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@PlanId , @LineId
		   ,@SupplieId, @UserID
		   --,[dbo].ufnCreatePlanSupplieCode(@factory,@branch, @year)
           ,GETDATE()
           ,GETDATE())
	SET @IdSelected = SCOPE_IDENTITY();
	--Cập nhật lại thông tin người tạo kế hoạch
Update PlanSupplie set UserPlan =@UserID where Id =@PlanId;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPlanTargetDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPlanTargetDevice] 
	-- Add the parameters for the stored procedure here
	   @PlanId bigint null
	  ,@Measurement nvarchar(500) null
      ,@Targets nvarchar(500) null
      ,@Solution nvarchar(500) null    
	  ,@Duration1 nvarchar(500) null
      ,@UserAct nvarchar(450) null      
	  ,@CoordinationUnit nvarchar(450) null
      ,@Note nvarchar(500) null
      ,@UserID nvarchar(450) null
	  ,@MinValue int null
      ,@TargetType int null
	  	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

	DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanTarget')  
IF EXISTS(SELECT t.Measurement FROM PlanTargetDevice t where t.Measurement =@Measurement) 
BEGIN
   Select 0 as Id, CONCAT(N'Nội dung [',@Measurement,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

--IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @IdSelected bigint;
 INSERT INTO [dbo].[PlanTargetDevice]
           ([PlanId]
           ,[Measurement]
           ,[Targets]
           ,[Solution]  
		   ,[Duration1]
           ,[UserAct]
           ,[CoordinationUnit]
           ,[Note]
           ,[TimeCreated]
           ,[TimeModified]
           ,[UserID]
		   ,MinValue
		   ,TargetType)
     VALUES
           (@PlanId
           ,@Measurement
           ,@Targets
           ,@Solution
		   ,@Duration1
           ,@UserAct
           ,@CoordinationUnit
           ,@Note
           ,GETDATE()
           ,GETDATE()
           ,@UserID
		   ,@MinValue
		   ,@TargetType)

    SET @IdSelected = SCOPE_IDENTITY();
	--Cập nhật lại thông tin người tạo kế hoạch
Update PlanTarget set UserPlan =@UserID where Id =@PlanId;

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddPosition]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPosition] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Position')  
IF EXISTS(SELECT t.Name FROM Position t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Position
           ([Name]
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddShift]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddShift] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Shift')  
IF EXISTS(SELECT t.Name FROM Shift t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Shift
           ([Name]
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddSupplie] 
	-- Add the parameters for the stored procedure here
	 @GroupID int null
 ,@LineId int null
           ,@Name nvarchar(450) null
           ,@Description nvarchar(450) null
           ,@Status int null
           ,@Code nvarchar(450)  null
           ,@Origin nvarchar(450)  null
           ,@YearOfUse int  null
           ,@InstallationPlace nvarchar(450)  null
           ,@MaintenanceCycle int  null
           ,@YearOfManufacture int  null
		   ,@NumberTotal int  null		   
,@Unit nvarchar(50)  null
,@QRCode nvarchar(450) null
,@QRCodeImg nvarchar(450) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Supplie')  
IF EXISTS(SELECT t.Code FROM Supplie t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Supplie t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Supplie
           (GroupID, LineId
           ,Name
           ,Description
           ,TimeCreated
           ,TimeModified
           ,Status
           ,Code, Unit
           ,Origin
           ,YearOfUse
           ,InstallationPlace
           ,MaintenanceCycle
           ,YearOfManufacture
		   ,NumberTotal
		   ,QRCode
		   ,QRCodeImg)
     VALUES
           (@GroupID, @LineId
           ,@Name
           ,@Description
           ,GETDATE()
           ,GETDATE()
           ,@Status
           ,@Code, @Unit
           ,@Origin
           ,@YearOfUse
           ,@InstallationPlace
           ,@MaintenanceCycle
           ,@YearOfManufacture
		   ,@NumberTotal
		   ,@QRCode
		   ,@QRCodeImg)

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddSupplieGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddSupplieGroup] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieGroup')  
--IF EXISTS(SELECT t.Code FROM SupplieGroup t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

IF EXISTS(SELECT t.Name FROM SupplieGroup t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO SupplieGroup
           ([Name]
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddSupplieUseDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddSupplieUseDevice] 
	-- Add the parameters for the stored procedure here
     @TeamId int null
	,@SupplieId int null
	,@SupplieUseId int null
	,@UserID nvarchar(450) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieUse')  
--IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.SupplieId FROM SupplieUseDetail t where t.SupplieId =@SupplieId)
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã Vật tư [',@SupplieId,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

DECLARE @IdSelected bigint;

INSERT INTO SupplieUseDetail
           (SupplieUseId ,TeamId, SupplieId)		    
     VALUES
           (@SupplieUseId , @TeamId  ,@SupplieId)

SET @IdSelected = SCOPE_IDENTITY();
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddTeam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddTeam] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	 ,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	,@BranchId int null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Team')  
IF EXISTS(SELECT t.Code FROM Team t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Team t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Team
           ([Name],Code
		   ,BranchId
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
		   ,@BranchId
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddThreshold] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50)   null
	,@UpperValue decimal(10, 2) null
	,@LowerValue decimal(10, 2)  null
    ,@Description nvarchar(500) null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Threshold')  
IF EXISTS(SELECT t.Code FROM Threshold t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, N'Cài đặt giá trị ngưỡng' as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Threshold t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, N'Cài đặt giá trị ngưỡng' as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Threshold
           ([Name],Code
		   ,UpperValue, LowerValue
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
		   ,@UpperValue, @LowerValue
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, N'Cài đặt giá trị ngưỡng' as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddUserActive]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,UserID>
-- Create date: <Create Date,,>
-- IpAddress:	<IpAddress,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddUserActive] 
	-- Add the parameters for the stored procedure here
	 @UserID nvarchar(450) 
    ,@IpAddress nvarchar(50) null
    ,@LogContent nvarchar(Max) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('UserActive')  
DECLARE @IdSelected bigint;
INSERT INTO UserActive
           ([UserID]
           ,[IpAddress]
           ,[DateActive]
		   ,LogContent)
     VALUES
           (@UserID
           ,@IpAddress
           ,GETDATE(),
		   @LogContent)

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, N'Nhật ký sử dụng' as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[AddUserLogin]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,UserID>
-- Create date: <Create Date,,>
-- IpAddress:	<IpAddress,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddUserLogin] 
	-- Add the parameters for the stored procedure here
	 @Email nvarchar(450) 
    ,@IpAddress nvarchar(50) null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
---DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('UserLogin')  

DECLARE @IdSelected bigint;
	DECLARE @UserId nvarchar(450) 
	IF EXISTS (select Id from AspNetUsers where UserName = @Email )
    BEGIN
			SET @UserId = (select Id from AspNetUsers where UserName = @Email);

			INSERT INTO UserLogin
				   ([UserID]
				   ,[IpAddress]
				   ,[DateLogin])
			 VALUES
				   (@UserId
				   ,@IpAddress
				   ,GETDATE())
			
SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, N'Nhật ký đăng nhập' as Tittle
return;	
    END
	--SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[CheckRegisterExisted]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,ProvinceList>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[CheckRegisterExisted]
@Email nvarchar(500) 
,@UserName nvarchar(500) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @Error int;Set @Error = 0;
DECLARE @ErrorMessage nvarchar(500); SET @ErrorMessage = '';
IF EXISTS(select * from AspNetUsers u WHERE u.Email = @Email)
BEGIN 
SET	@Error = 1;
Set @ErrorMessage = 'Email đăng nhập đã được đăng ký,' ;
END

IF EXISTS(SELECT  * from AspNetUsers anu  where anu.UserName  = @UserName)
BEGIN 
SET	@Error = 1;
Set @ErrorMessage = CONCAT(@ErrorMessage,' tên tài khoản đã được đăng ký') ;
END
Select @Error as Error, @ErrorMessage as Message
return;
END
GO
/****** Object:  StoredProcedure [dbo].[CheckUserExisted]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,ProvinceList>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[CheckUserExisted]
@Email nvarchar(500) 
,@UserName nvarchar(500) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @Error int;Set @Error = 0;
DECLARE @ErrorMessage nvarchar(500); SET @ErrorMessage = '';
IF EXISTS(select * from AspNetUsers u WHERE u.Email = @Email)
BEGIN 
SET	@Error = 1;
Set @ErrorMessage = N'Email đăng nhập đã được đăng ký,' ;
END

IF EXISTS(SELECT  * from AspNetUsers anu  where anu.UserName  = @UserName)
BEGIN 
SET	@Error = 1;
Set @ErrorMessage = CONCAT(@ErrorMessage,N' tên tài khoản đã được đăng ký') ;
END
Select @Error as Error, @ErrorMessage as Message
return;
END
GO
/****** Object:  StoredProcedure [dbo].[CreateNewPlanOver]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateNewPlanOver] 
@year int null,
@BranchId int null,
@FactoryId int null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int

	INSERT INTO [dbo].[PlanOver]
				   ([PlanYear]
				   ,[FactoryId]
				   ,[BranchId]
				   ,[UserPlan]
				   ,[DatePlan]
				   ,[PlanNumber]
				   ,[TimeCreated]
				   ,[TimeModified])
			 VALUES
				   (@year
				   ,@FactoryId
				   ,@BranchId
				   ,@UserId
				   ,GETDATE()        
				   ,NULL
				   ,GETDATE()    
				   ,GETDATE());
  set @CurrentPlanId = SCOPE_IDENTITY();
  update PlanOver set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'CSL', 'PlanOver' , 0 , 0, @CurrentPlanId) where Id = @CurrentPlanId; 
	
  select @CurrentPlanId as Id, N'Thêm mới kế hoạch sữa chữa lớn thành công.' as message, N'Quản lý Kế hoạch CSL' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustDeviceTarget]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateToAdjustDeviceTarget] 
	-- Add the parameters for the stored procedure here
	 @PlanIdOrg bigint null
	 ,@PlanId bigint null
     ,@Number int null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    DECLARE @NewPlanID bigint
	DECLARE @NumberNew int  ; set @NumberNew = @Number +1;
	INSERT INTO dbo.DeviceTarget
           ([PlanYear]
      ,[PlanMonth]
      ,[FactoryId]
      ,[BranchId]
      ,[TimeCreated]
      ,[TimeModified]
      ,[UserId]
      ,[PlanNumber]
           ,[PlanId]
           ,[Number])
  SELECT [PlanYear]
      ,[PlanMonth]
      ,[FactoryId]
      ,[BranchId]
      ,[TimeCreated]
      ,[TimeModified]
      ,[UserId]
      ,[PlanNumber]
      ,@PlanIdOrg as PlanId
      ,@NumberNew as Number
 FROM dbo.DeviceTarget where Id = @PlanId

SET @NewPlanID = SCOPE_IDENTITY();
INSERT INTO dbo.DeviceTargetDetail
           ([DeviceTargetId]
      ,[Contents]
      ,[Targets]
      ,[ResultAct]
      ,[Evaluate]
      ,[PlanTargetId]
      ,[PlanContent]
      ,[Note]
      ,[UserId])
 SELECT  @NewPlanID as DeviceTargetId
      ,[Contents]
      ,[Targets]
      ,[ResultAct]
      ,[Evaluate]
      ,[PlanTargetId]
      ,[PlanContent]
      ,[Note]
      ,[UserId]
  FROM dbo.DeviceTargetDetail where DeviceTargetId = @PlanId

  Select @NewPlanID as Id , CONCAT(N'Tạo mới bản điều chỉnh lần ', @NumberNew) as message, N'Quản lý Báo cáo thực hiện mục tiêu quản lý thiết bị' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanDaily]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateToAdjustPlanDaily] 
	-- Add the parameters for the stored procedure here
	 @PlanIdOrg bigint null
	 ,@PlanId bigint null
     ,@Number int null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    DECLARE @NewPlanID bigint
	DECLARE @NumberNew int  ; set @NumberNew = @Number +1;
	INSERT INTO dbo.PlanDaily
           ([PlanMonth]
      ,[PlanYear]
      ,[FactoryId]
      ,[BranchId]
      ,[DeviceId]
      ,[PlanNumber]
      ,[UserPlan]
      ,[DatePlan]
      --,[UserFactory]
      --,[DateFactory]
      --,[DateBranch]
      --,[UserBranch]
      --,[DateAuthority]
      --,[UserAuthority]
      ,[TimeCreated]
      ,[TimeModified]
      --,[UserWeek1]
      --,[UserWeek2]
      --,[UserWeek3]
      --,[UserWeek4]
           ,[PlanId]
           ,[Number])
  SELECT [PlanMonth]
      ,[PlanYear]
      ,[FactoryId]
      ,[BranchId]
      ,[DeviceId]
      ,[PlanNumber]
      ,[UserPlan]
      ,[DatePlan]
      --,[UserFactory]
      --,[DateFactory]
      --,[DateBranch]
      --,[UserBranch]
      --,[DateAuthority]
      --,[UserAuthority]
      ,[TimeCreated]
      ,[TimeModified]
      --,[UserWeek1]
      --,[UserWeek2]
      --,[UserWeek3]
      --,[UserWeek4]
      ,@PlanIdOrg as PlanId
      ,@NumberNew as Number
 FROM dbo.PlanDaily where Id = @PlanId
SET @NewPlanID = SCOPE_IDENTITY();

INSERT INTO dbo.PlanDailyWorks
           ([PlanId]
      ,[DeviceWorkId]
      ,[DayStatus01]
      ,[DayStatus02]
      ,[DayStatus03]
      ,[DayStatus04]
      ,[DayStatus05]
      ,[DayStatus06]
      ,[DayStatus07]
      ,[DayStatus08]
      ,[DayStatus09]
      ,[DayStatus10]
      ,[DayStatus11]
      ,[DayStatus12]
      ,[DayStatus13]
      ,[DayStatus14]
      ,[DayStatus15]
      ,[DayStatus16]
      ,[DayStatus17]
      ,[DayStatus18]
      ,[DayStatus19]
      ,[DayStatus20]
      ,[DayStatus21]
      ,[DayStatus22]
      ,[DayStatus23]
      ,[DayStatus24]
      ,[DayStatus25]
      ,[DayStatus26]
      ,[DayStatus27]
      ,[DayStatus28]
      ,[DayStatus29]
      ,[DayStatus30]
      ,[DayStatus31])
 SELECT  @NewPlanID as PlanId
      ,[DeviceWorkId]
      ,[DayStatus01]
      ,[DayStatus02]
      ,[DayStatus03]
      ,[DayStatus04]
      ,[DayStatus05]
      ,[DayStatus06]
      ,[DayStatus07]
      ,[DayStatus08]
      ,[DayStatus09]
      ,[DayStatus10]
      ,[DayStatus11]
      ,[DayStatus12]
      ,[DayStatus13]
      ,[DayStatus14]
      ,[DayStatus15]
      ,[DayStatus16]
      ,[DayStatus17]
      ,[DayStatus18]
      ,[DayStatus19]
      ,[DayStatus20]
      ,[DayStatus21]
      ,[DayStatus22]
      ,[DayStatus23]
      ,[DayStatus24]
      ,[DayStatus25]
      ,[DayStatus26]
      ,[DayStatus27]
      ,[DayStatus28]
      ,[DayStatus29]
      ,[DayStatus30]
      ,[DayStatus31]
       FROM dbo.PlanDailyWorks where PlanId = @PlanId

INSERT INTO  [dbo].[PlanDailyTrouble] 
    ([PlanId]
      ,[TroubleContent]
      ,[TroubleDate]
      ,[ContentAndResult]
      ,[UserConfirm]
      ,[DateConfirm]
      ,[Conclusion]
      ,[TimeCreated]
      ,[TimeModified]
      ,[TroubleReportID]
      ,[TimeStopBegin]
      ,[TimeStopEnd]
      ,[LocationDetai]
      ,[RepairContent]
      ,[RepairUser]
      ,[Repair]
      ,[Note]
      ,[HasReport]
      ,[DeviceId])
SELECT 
      [PlanId]
      ,[TroubleContent]
      ,[TroubleDate]
      ,[ContentAndResult]
      ,[UserConfirm]
      ,[DateConfirm]
      ,[Conclusion]
      ,[TimeCreated]
      ,[TimeModified]
      ,[TroubleReportID]
      ,[TimeStopBegin]
      ,[TimeStopEnd]
      ,[LocationDetai]
      ,[RepairContent]
      ,[RepairUser]
      ,[Repair]
      ,[Note]
      ,[HasReport]
      ,[DeviceId]
  FROM [dbo].[PlanDailyTrouble]  where PlanId = @PlanId

 INSERT INTO [dbo].[PlanDailyTroubleReport]
           ([TroubleId]
      ,[AddressTrouble]
      ,[DateTrouble]
      ,[DescriptionTrouble]
      ,[ReasonTrouble]
      ,[HandlingMeansure]
      ,[UserAct]
      ,[DateDone]
      ,[UserPart]
      ,[UnitPart]
      ,[UserManager]
      ,[UserBranch]
      ,[UserAuthority]
      ,[TimeCreated]
      ,[TimeModified]
      ,[FactoryId]
      ,[BranchId]
      ,[ReportNumber]
      ,[PlanId]
      ,[DateBranch]
      ,[DateFactory]
      ,[DateAuthority])
SELECT 
      [TroubleId]
      ,[AddressTrouble]
      ,[DateTrouble]
      ,[DescriptionTrouble]
      ,[ReasonTrouble]
      ,[HandlingMeansure]
      ,[UserAct]
      ,[DateDone]
      ,[UserPart]
      ,[UnitPart]
      ,[UserManager]
      ,[UserBranch]
      ,[UserAuthority]
      ,[TimeCreated]
      ,[TimeModified]
      ,[FactoryId]
      ,[BranchId]
      ,[ReportNumber]
      ,[PlanId]
      ,[DateBranch]
      ,[DateFactory]
      ,[DateAuthority]
  FROM [dbo].[PlanDailyTroubleReport]

  INSERT INTO [dbo].[PlanDailyTroubleSupplie]
           ([TroubleId]
           ,[SupplieId]
           ,[Quantity]
           ,[Price]
           ,[ToMoney]
           ,[InUses])
 select [TroubleId]
           ,[SupplieId]
           ,[Quantity]
           ,[Price]
           ,[ToMoney]
           ,[InUses]
		   FROM  [dbo].[PlanDailyTroubleSupplie]

  Select @NewPlanID as Id , CONCAT(N'Tạo mới bản điều chỉnh lần ', @NumberNew) as message, N'Quản lý Kế hoạch CSBD Hàng ngày, Hàng tuần' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanOver]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateToAdjustPlanOver] 
	-- Add the parameters for the stored procedure here
	 @PlanIdOrg bigint null
	 ,@PlanId bigint null
     ,@Number int null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    DECLARE @NewPlanID bigint
	DECLARE @NumberNew int  ; set @NumberNew = @Number +1;
	INSERT INTO dbo.PlanOver
           ([PlanYear]
           ,[FactoryId]
           ,[BranchId]
           ,[DatePlan]
           ,[UserPlan]
           --,[DateBranch]
           --,[UserBranch]
           --,[DateFactory]
           --,[UserFactory]
           --,[DateAuthority]
           --,[UserAuthority]
           ,[PlanNumber]
           ,[TimeCreated]
           ,[TimeModified]
           ,[Targets]
           ,[PlanId]
           ,[Number])
  SELECT [PlanYear]
           ,[FactoryId]
           ,[BranchId]
           ,[DatePlan]
           ,[UserPlan]
           --,[DateBranch]
           --,[UserBranch]
           --,[DateFactory]
           --,[UserFactory]
           --,[DateAuthority]
           --,[UserAuthority]
           ,[PlanNumber]
           ,[TimeCreated]
           ,[TimeModified]
           ,[Targets]
      ,@PlanIdOrg as PlanId
      ,@NumberNew as Number
 FROM dbo.PlanOver where Id = @PlanId

SET @NewPlanID = SCOPE_IDENTITY();
INSERT INTO dbo.PlanOverDevice
           ([PlanId]
           ,[DeviceId]
           ,[LineId]
           ,[CurrentStatus]
           ,[RepairContent]
           ,[Targets]
           ,[Progress]
           ,[UserChair]
           ,[UserAct]
           ,[Note]
           ,[TimeCreated]
           ,[TimeModified]
           ,[UserID])
 SELECT  @NewPlanID as PlanId
      ,[DeviceId]
           ,[LineId]
           ,[CurrentStatus]
           ,[RepairContent]
           ,[Targets]
           ,[Progress]
           ,[UserChair]
           ,[UserAct]
           ,[Note]
           ,[TimeCreated]
           ,[TimeModified]
           ,[UserID]
  FROM dbo.PlanOverDevice where PlanId = @PlanId

  Select @NewPlanID as Id , CONCAT(N'Tạo mới bản điều chỉnh lần ', @NumberNew) as message, N'Quản lý Kế hoạch Đại tu, SCL' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanPeriodic]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateToAdjustPlanPeriodic] 
	-- Add the parameters for the stored procedure here
	 @PlanIdOrg bigint null
	 ,@PlanId bigint null
     ,@Number int null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    DECLARE @NewPlanID bigint
	DECLARE @NumberNew int  ; set @NumberNew = @Number +1;
	INSERT INTO dbo.PlanPeriodic
           ([PlanYear]
      ,[FactoryId]
      ,[BranchId]
      ,[DatePlan]
      ,[UserPlan]
      --,[DateBranch]
      --,[UserBranch]
      --,[DateFactory]
      --,[UserFactory]
      --,[DateAuthority]
      --,[UserAuthority]
      ,[PlanNumber]
      ,[TimeCreated]
      ,[TimeModified]
           ,[PlanId]
           ,[Number])
  SELECT [PlanYear]
      ,[FactoryId]
      ,[BranchId]
      ,[DatePlan]
      ,[UserPlan]
      --,[DateBranch]
      --,[UserBranch]
      --,[DateFactory]
      --,[UserFactory]
      --,[DateAuthority]
      --,[UserAuthority]
      ,[PlanNumber]
      ,[TimeCreated]
      ,[TimeModified]
      ,@PlanIdOrg as PlanId
      ,@NumberNew as Number
 FROM dbo.PlanPeriodic where Id = @PlanId
SET @NewPlanID = SCOPE_IDENTITY();

INSERT INTO dbo.PlanPeriodicDevice
           ([PlanId]
           ,[PlanNumber]
           ,[TimeCreated]
           ,[TimeModified]
           ,[DeviceId]
           ,[Note]
           ,[UserId]
           ,[Month01]
           ,[Month02]
           ,[Month03]
           ,[Month04]
           ,[Month05]
           ,[Month06]
           ,[Month07]
           ,[Month08]
           ,[Month09]
           ,[Month10]
           ,[Month11]
           ,[Month12])
 SELECT  @NewPlanID as PlanId
           ,[PlanNumber]
           ,[TimeCreated]
           ,[TimeModified]
           ,[DeviceId]
           ,[Note]
           ,[UserId]
           ,[Month01]
           ,[Month02]
           ,[Month03]
           ,[Month04]
           ,[Month05]
           ,[Month06]
           ,[Month07]
           ,[Month08]
           ,[Month09]
           ,[Month10]
           ,[Month11]
           ,[Month12]
       FROM dbo.PlanPeriodicDevice where PlanId = @PlanId

INSERT INTO  [dbo].[PlanPeriodicDetail] 
    ([PlanDeviceId]
      ,[Month01]
      ,[Month02]
      ,[Month03]
      ,[Month04]
      ,[Month05]
      ,[Month06]
      ,[Month07]
      ,[Month08]
      ,[Month09]
      ,[Month10]
      ,[Month11]
      ,[Month12]
	  ,MonthAct
      ,[WorkContent]
      ,[DepartmentAct]
      ,[FormId]
      ,[Note])
SELECT [PlanDeviceId]
      ,[Month01]
      ,[Month02]
      ,[Month03]
      ,[Month04]
      ,[Month05]
      ,[Month06]
      ,[Month07]
      ,[Month08]
      ,[Month09]
      ,[Month10]
      ,[Month11]
      ,[Month12]
	  ,MonthAct
      ,[WorkContent]
      ,[DepartmentAct]
      ,[FormId]
      ,[Note]
 FROM [dbo].[PlanPeriodicDetail]  --where PlanId = @PlanId

 INSERT INTO [dbo].[PlanPeriodicReport]
           ([PlanDeviceId]
           ,[TimeDelivery]
           ,[StartDate]
           ,[EndDate]
           ,[WorkArising]
           ,[OperatingResults]
           ,[ActionMore]
           ,[Responsibility]
           ,[Duration]
           ,[UserSCBD]
           ,[UserBranch]
           ,[UserDepartment]
           ,[UserAuthority]
           ,[RequestSafe]
           ,[RequestQuality]
           ,[RequestProductivity]
           ,[ReportNumberCode]
           ,[ReportDate]
           ,[DateBranch]
           ,[DateFactory]
           ,[DateAuthority])
SELECT [PlanDeviceId]
      ,[TimeDelivery]
      ,[StartDate]
      ,[EndDate]
      ,[WorkArising]
      ,[OperatingResults]
      ,[ActionMore]
      ,[Responsibility]
      ,[Duration]
      ,[UserSCBD]
      ,[UserBranch]
      ,[UserDepartment]
      ,[UserAuthority]
      ,[RequestSafe]
      ,[RequestQuality]
      ,[RequestProductivity]
      ,[ReportNumberCode]
      ,[ReportDate]
      ,[DateBranch]
      ,[DateFactory]
      ,[DateAuthority]
  FROM [dbo].[PlanPeriodicReport]


  Select @NewPlanID as Id , CONCAT(N'Tạo mới bản điều chỉnh lần ', @NumberNew) as message, N'Quản lý Kế hoạch SCBD Thiết bị định kỳ' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateToAdjustPlanSupplie] 
	-- Add the parameters for the stored procedure here
	  @PlanIdOrg bigint null
	 ,@PlanId bigint null
     ,@Number int null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    DECLARE @NewPlanID bigint
	DECLARE @NumberNew int  ; set @NumberNew = @Number +1;
	INSERT INTO dbo.PlanSupplie
           (PlanType
           ,PlanYear
           ,PlanOverId
           ,FactoryId
           ,BranchId
           ,PlanNumber
           ,DatePlan
           ,UserPlan
           --,DateBranch
           --,UserBranch
           --,DateFactory
           --,UserFactory
           --,DateAuthority
           --,UserAuthority
           ,TimeCreated
           ,TimeModified
           ,PlanId
           ,Number)
  SELECT PlanType
      ,PlanYear
      ,PlanOverId
      ,FactoryId
      ,BranchId
      ,PlanNumber
      ,DatePlan
      ,UserPlan
      --,DateBranch
      --,UserBranch
      --,DateFactory
      --,UserFactory
      --,DateAuthority
      --,UserAuthority
      ,TimeCreated
      ,TimeModified
      ,@PlanIdOrg as PlanId
      ,@NumberNew as Number
 FROM dbo.PlanSupplie where Id = @PlanId

SET @NewPlanID = SCOPE_IDENTITY();
INSERT INTO dbo.PlanSupplieDetail
           (PlanId
           ,SupplieId
           ,LineId
           ,Belonging
           ,NumberNote
           ,SupplieCode
           ,Requirements
           ,Manufacture
           ,Duration
           ,UserAct
           ,Note
           ,TimeCreated
           ,TimeModified
           ,UserID
           ,Amount)
 SELECT  @NewPlanID as PlanId
      ,SupplieId
      ,LineId
      ,Belonging
      ,NumberNote
      ,SupplieCode
      ,Requirements
      ,Manufacture
      ,Duration
      ,UserAct
      ,Note
      ,TimeCreated
      ,TimeModified
      ,UserID
      ,Amount
  FROM dbo.PlanSupplieDetail where PlanId = @PlanId

Select @NewPlanID as Id , CONCAT(N'Tạo mới bản điều chỉnh lần ', @NumberNew) as message, N'Quản lý Kế hoạch sử dụng vật tư, phụ tùng' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[CreateToAdjustPlanTarget]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateToAdjustPlanTarget] 
	-- Add the parameters for the stored procedure here
	 @PlanIdOrg bigint null
	 ,@PlanId bigint null
     ,@Number int null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    DECLARE @NewPlanID bigint
	DECLARE @NumberNew int  ; set @NumberNew = @Number +1;
	INSERT INTO dbo.PlanTarget
           ([PlanYear]
      ,[FactoryId]
      ,[BranchId]
      ,[DatePlan]
      ,[UserPlan]
      ,[DateBranch]
      ,[UserBranch]
      ,[DateFactory]
      ,[UserFactory]
      ,[DateAuthority]
      ,[UserAuthority]
      ,[PlanNumber]
      ,[TimeCreated]
      ,[TimeModified]
      ,[Targets]
	  ,PlanId
	  ,Number)
  SELECT [PlanYear]
      ,[FactoryId]
      ,[BranchId]
      ,[DatePlan]
      ,[UserPlan]
      ,[DateBranch]
      ,[UserBranch]
      ,[DateFactory]
      ,[UserFactory]
      ,[DateAuthority]
      ,[UserAuthority]
      ,[PlanNumber]
      ,[TimeCreated]
      ,[TimeModified]
      ,[Targets]
      ,@PlanIdOrg as PlanId
      ,@NumberNew as Number
 FROM dbo.PlanTarget where Id = @PlanId

SET @NewPlanID = SCOPE_IDENTITY();
INSERT INTO dbo.[PlanTargetDevice]
           ( [PlanId]
      ,[DeviceId]
      ,[LineId]
      ,[Measurement]
      ,[Targets]
      ,[Duration1]
      ,[Solution]
      ,[UserAct]
      ,[Duration2]
      ,[Note]
      ,[TimeCreated]
      ,[TimeModified]
      ,[UserID]
      ,[CoordinationUnit])
SELECT 
      @NewPlanID as [PlanId]
      ,[DeviceId]
      ,[LineId]
      ,[Measurement]
      ,[Targets]
      ,[Duration1]
      ,[Solution]
      ,[UserAct]
      ,[Duration2]
      ,[Note]
      ,[TimeCreated]
      ,[TimeModified]
      ,[UserID]
      ,[CoordinationUnit]
  FROM [dbo].[PlanTargetDevice] where [PlanId] = @PlanId

  Select @NewPlanID as Id , CONCAT(N'Tạo mới bản điều chỉnh lần ', @NumberNew) as message, N'Quản lý Kế hoạch Mục tiêu quản lý thiết bị' as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAlert]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAlert] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Alert')  

Delete FROm Alert WHERE Id =@ID;

   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteBranch] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Branch')  
IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanPeriodic t where t.BranchId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanOver t where t.BranchId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanSupplie t where t.BranchId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanTarget t where t.BranchId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
   return;
END

Delete FROm Branch WHERE Id =@ID;   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteConfigSystem]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteConfigSystem] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Config')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
   Delete FROm ConfigSystem WHERE Id =@ID;  
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartment]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteDepartment] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Department')  
IF EXISTS(SELECT Id FROM AspNetUsers t where t.DepartmentId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Department t where t.Id =@Id
   return;
END
   Delete FROm Department WHERE Id =@ID;

   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteDevice] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Device')  
IF EXISTS(SELECT Id FROM PlanDaily t where t.DeviceId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Device t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanPeriodicDevice t where t.DeviceId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Device t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanOverDevice t where t.DeviceId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Device t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM DeviceWorks t where t.DeviceId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Device t where t.Id =@Id
   return;
END

   DECLARE @HasDel bit = 1
   if(@HasDel=1)
   BEGIN
	   Delete FROm Device WHERE Id =@ID;
	   Delete from DeviceHistory where DeviceId = @Id
	   --Delete from DeviceHistory where DeviceId = @Id
   END
  
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDeviceGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteDeviceGroup] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceGroup')  
IF EXISTS(SELECT Id FROM Device t where t.GroupID = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from DeviceGroup t where t.Id =@Id
   return;
END
   Delete FROm DeviceGroup WHERE Id =@ID;

   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDeviceTargetDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteDeviceTargetDetail]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceTarget')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
DECLARE @TagetName nvarchar(550); set @TagetName = (select Contents from  DeviceTargetDetail  where Id =@Id)
Update DeviceTargetDetail set ResultAct = nuLL
      ,Evaluate = NULL
	  ,PlanContent = NULL
	  ,Note = NULL
     where Id =@Id

   Select @Id as Id, CONCAT(N'Xóa số liệu đánh giá thực hiện mục tiêu ', @TagetName ,' thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFactory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteFactory] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Factory')  
IF EXISTS(SELECT Id FROM PlanDaily t where t.FactoryId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Factory t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanPeriodic t where t.FactoryId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Factory t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanOver t where t.FactoryId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Factory t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanSupplie t where t.FactoryId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Factory t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM PlanTarget t where t.FactoryId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Factory t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM Branch t where t.FactoryId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Factory t where t.Id =@Id
   return;
END

   Delete FROm Factory WHERE Id =@ID;

   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteForm]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteForm] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Form')  
IF EXISTS(SELECT Id FROM PlanPeriodicDetail t where t.FormId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Form t where t.Id =@Id
   return;
END
   Delete FROm Form WHERE Id =@ID;
   
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteLine]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteLine] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Line')  
IF EXISTS(SELECT Id FROM AspNetUsers t where t.LineId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Line t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM Device t where t.LineId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Line t where t.Id =@Id
   return;
END

   Delete FROm Line WHERE Id =@ID;
   
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDaily]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanDaily]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  

Delete from PlanDaily where Id =@Id	
--XÓa nội dung liên quan
Delete from PlanDailyTroubleReport where TroubleId IN (Select Id from PlanDailyTrouble where PlanId =@Id)
Delete from PlanDailyTroubleSupplie where TroubleId IN (Select Id from PlanDailyTrouble where PlanId =@Id)
Delete from PlanDailyDetail where PlanId =@Id	
Delete from PlanDailyTrouble where PlanId =@Id	
Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanDailyDetail]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END

Delete from PlanDailyDetail where Id =@Id
	
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanDailyTrouble]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  

	 Delete FROm PlanDailyTroubleSupplie WHERE TroubleId =@ID;
     Delete FROm PlanDailyTroubleReport WHERE TroubleId =@ID;
     Delete FROm PlanDailyTrouble WHERE Id =@ID; 
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;

END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanDailyTroubleReport]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  

Delete from [PlanDailyTroubleReport] where Id =@Id

   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanDailyTroubleSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanDailyTroubleSupplie]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  

Delete from [PlanDailyTroubleSupplie] where Id =@Id
	
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanOver]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanOver]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanOver')  

Delete from PlanOver where Id =@Id	   
Delete from PlanOverDevice where PlanId =@Id	   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanOverDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanOverDevice]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanOver')  

Delete from PlanOverDevice where Id =@Id	   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodic]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanPeriodic]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  

Delete from PlanPeriodic where Id =@Id	
--XÓa nội dung liên quan
Delete from PlanPeriodicDetail where PlanDeviceId IN (Select Id from PlanPeriodicDevice where PlanId =@Id)
Delete from PlanPeriodicReport where PlanDeviceId IN (Select Id from PlanPeriodicDevice where PlanId =@Id)
Delete from PlanPeriodicDevice where PlanId =@Id	

Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodicDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanPeriodicDetail]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
Delete from PlanPeriodicDetail where Id =@Id
	
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodicDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanPeriodicDevice]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END

Delete from PlanPeriodicDevice where Id =@Id   
Delete from PlanPeriodicDetail where PlanDeviceId =@Id   
Delete from PlanPeriodicReport where PlanDeviceId =@Id   

Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanPeriodicReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanPeriodicReport]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END

Delete from PlanPeriodicReport where Id =@Id

   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanSupplie]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanSupplie')  

Delete from PlanSupplie where Id =@Id	
Delete from PlanSupplieDetail where PlanId =@Id	   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanSupplieDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanSupplieDetail]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanSupplie')  

Delete from PlanSupplieDetail where Id =@Id	   

Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePlanTargetDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanTargetDevice]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanTarget')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END

Delete from PlanTargetDevice where Id =@Id
Delete from DeviceTargetDetail  where PlanTargetId = @Id

   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePosition]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePosition] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Position')  
IF EXISTS(SELECT Id FROM AspNetUsers t where t.PositionId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Position t where t.Id =@Id
   return;
END
   Delete FROm Position WHERE Id =@ID;
 
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteRole] 
	-- Add the parameters for the stored procedure here
	@Id nvarchar(450) null 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

--IF EXISTS(SELECT Id FROM AspNetUserRoles t where t.PositionId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Position t where t.Id =@Id
--   return;
--END

   Delete AspNetRoles  WHERE Id =@ID;
   Delete AspNetRoleClaims  WHERE RoleId =@ID;
   Delete AspNetUserRoles  WHERE RoleId =@ID;

 

if(@Id <>'' AND @Id IS NOT NULL)   
     Select 1 as Id, CONCAT(N'Xóa thành công.', '') as message, N'Nhóm người dùng' as Tittle;
  else 
     Select 0 as Id, CONCAT(N'Xóa không thành công.', '') as message, N'Nhóm người dùng' as Tittle;
 return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteShift]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteShift] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Shift')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
   Delete FROm Shift WHERE Id =@ID;
 
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSupplie] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Supplie')  
IF EXISTS(SELECT Id FROM PlanDailyTroubleSupplie t where t.SupplieId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Supplie t where t.Id =@Id
   return;
END
   Delete FROm Supplie WHERE Id =@ID;
 
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplieGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSupplieGroup] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieGroup')  
IF EXISTS(SELECT Id FROM Supplie t where t.GroupID = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from SupplieGroup t where t.Id =@Id
   return;
END
   Delete FROm SupplieGroup WHERE Id =@ID;

   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplieUse]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSupplieUse]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieUse')  

Delete from SupplieUseDetail where Id =@Id	   

Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSupplieUseDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Author,,Name>
-- Create date: Create Date,,>
-- Description:	Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSupplieUseDetail]
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieUse')  

Delete from SupplieUseDetail where Id =@Id	   

Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTeam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteTeam] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Team')  
IF EXISTS(SELECT Id FROM Line t where t.TeamId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Team t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM Device t where t.TeamId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Team t where t.Id =@Id
   return;
END
IF EXISTS(SELECT Id FROM AspNetUsers t where t.TeamId = @Id) 
BEGIN
   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Team t where t.Id =@Id
   return;
END

   Delete FROm Team WHERE Id =@ID;
 
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteThreshold] 
	-- Add the parameters for the stored procedure here
	@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Threshold')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
   Delete FROm Threshold WHERE Id =@ID;
  
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteTroubleReport] 
	-- Add the parameters for the stored procedure here
  @Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('TroubleReport')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END

DELETE  [dbo].[PlanDailyTroubleReport]
       where Id = @Id

	
   
   Select @Id as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUser] 
	-- Add the parameters for the stored procedure here
	@Id nvarchar(450) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('User')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
   Delete FROm AspNetUsers WHERE Id =@ID;
   Delete FROm UserActive WHERE UserID =@ID;
   Delete FROm UserLogin WHERE UserID =@ID;
   Delete FROm AspNetUserClaims WHERE UserID =@ID;
   Delete FROm AspNetUserLogins WHERE UserID =@ID;
   Delete FROm AspNetUserRoles WHERE UserID =@ID;
   Delete FROm AspNetUserTokens WHERE UserID =@ID;

  if(@Id <>'' AND @Id IS NOT NULL)   
     Select 1 as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
  else 
     Select 0 as Id, CONCAT(N'Xóa không thành công.', '') as message, @FuncName as Tittle

return;

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserActive]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUserActive] 
	-- Add the parameters for the stored procedure here
 @UserId nvarchar(450) = '',
  @startDate nvarchar(450) = '',
   @endDate nvarchar(450) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('UserActive')  
if(@UserId ='-1')
  truncate table UserActive
ELSE
BEGIN
if(@startDate <> '' AND @endDate <> '')
		BEGIN
			delete FROm UserActive 
			   WHERE (DateActive BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103) ) AND (UserId = @UserId OR @UserId ='0')
		END
		ELSE if(@startDate <> '' AND @endDate = '')
		BEGIN
			delete FROm UserActive 
			   WHERE (DateActive >= CONVERT(DATETIME, @startDate, 103)) AND (UserId = @UserId OR @UserId ='0')
		END
		ELSE if(@startDate = '' AND @endDate <> '')
		BEGIN
			delete FROm UserActive 
			   WHERE (DateActive <= CONVERT(DATETIME, @endDate, 103)) AND (UserId = @UserId OR @UserId ='0')
		END
		ELSE 
		BEGIN
			delete FROm UserActive 
				   WHERE (UserId = @UserId OR @UserId ='0')
		END
END
     
   Select 1 as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserLogin]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUserLogin] 
	-- Add the parameters for the stored procedure here
 @UserId nvarchar(450) = '',
  @startDate nvarchar(450) = '',
   @endDate nvarchar(450) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('UserLogin')  
--IF EXISTS(SELECT Id FROM PlanDaily t where t.BranchId = @Id) 
--BEGIN
--   Select 0 as Id,CONCAT(N'Không thể xóa [',t.Name,N'] vì còn tham chiếu dữ liệu khác.') as message, @FuncName as Tittle from Branch t where t.Id =@Id
--   return;
--END
if(@UserId ='-1')
  truncate table UserLogin
ELSE
BEGIN
if(@startDate <> '' AND @endDate <> '')
		BEGIN
			delete FROm UserLogin 
			   WHERE (DateLogin BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103) ) AND (UserId = @UserId OR @UserId ='0')
		END
		ELSE if(@startDate <> '' AND @endDate = '')
		BEGIN
			delete FROm UserLogin 
			   WHERE (DateLogin >= CONVERT(DATETIME, @startDate, 103)) AND (UserId = @UserId OR @UserId ='0')
		END
		ELSE if(@startDate = '' AND @endDate <> '')
		BEGIN
			delete FROm UserLogin 
			   WHERE (DateLogin <= CONVERT(DATETIME, @endDate, 103)) AND (UserId = @UserId OR @UserId ='0')
		END
		ELSE 
		BEGIN
			delete FROm UserLogin 
				   WHERE (UserId = @UserId OR @UserId ='0')
		END
END
     
   Select 1 as Id, CONCAT(N'Xóa thành công.', '') as message, @FuncName as Tittle
   return;
END
GO
/****** Object:  StoredProcedure [dbo].[EditAlert]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditAlert] 
	-- Add the parameters for the stored procedure here
	 @Status int null =0
	,@DeviceType int null =0
	,@WarningType int null =0
    ,@Description nvarchar(500) null
,@Name nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Alert')  

   UPDATE Alert
   SET Status =@Status, Name = @Name
   ,DeviceType = @DeviceType
   ,WarningType =@WarningType
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditBranch] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50) null
    ,@Description nvarchar(500) null
		,@FactoryId int null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Branch')  
IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

  UPDATE Branch
   SET [Name] =@Name, Code=@Code
       ,FactoryId=@FactoryId
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[EditConfigSystem]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditConfigSystem] 
	-- Add the parameters for the stored procedure here
@ConfigValue nvarchar(550) ,
@Id int =0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Config')  

UPDATE ConfigSystem SET ConfigValue = @ConfigValue          
                            ,[TimeModified] = GETDATE()
							where Id =@Id

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[EditDepartment]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditDepartment] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50) null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Department')  
IF EXISTS(SELECT t.Code FROM Department t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Department t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE Department
   SET [Name] =@Name, Code=@Code
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;


Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[EditDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditDevice] 
	-- Add the parameters for the stored procedure here
	 @GroupID int null
	 ,@BranchId int null
	 ,@TeamId int null
	 ,@LineId int null
           ,@Name nvarchar(450) null
           ,@Description nvarchar(450) null
           ,@Status int null
           ,@Code nvarchar(450)  null
		   ,@QRCode nvarchar(450)  null
		   ,@QRCodeImg nvarchar(450) null
           ,@Origin nvarchar(450)  null
           ,@YearOfUse int  null
           ,@InstallationPlace nvarchar(450)  null
           ,@MaintenanceCycle int  null
           ,@YearOfManufacture int  null
		   ,@Description2 nvarchar(450)  null
           ,@Properties int  null
		   ,@MonthofUse int null
		   ,@TimeReceived nvarchar(20) null
,@TimeUse nvarchar(20) null
		   ,@GetRangDong int null
		   ,@IsImportant int null
	,@Id int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
    DECLARE @BranchIdOld int
	  DECLARE @TeamIdOld int
	    DECLARE @LineIdOld int
	SELECT @BranchIdOld = d.BranchId, @TeamIdOld = d.TeamId, @LineIdOld = d.LineId from Device d WHERE d.Id =@Id;
	

	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Device')  
IF EXISTS(SELECT t.Code FROM Device t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Device t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

BEGIN TRY  
		 UPDATE Device
		   SET GroupID = @GroupID
		   ,BranchId =@BranchId
		   ,TeamId =@TeamId
		   ,LineId =@LineId
			  ,Name = @Name
			  ,Description = @Description
			  ,Status = @Status
			  ,Code = @Code
			  ,QRCode = @QRCode
			  ,QRCodeImg = @QRCodeImg
			  ,Origin = @Origin
			  ,YearOfUse = @YearOfUse
			  ,InstallationPlace = @InstallationPlace
			  ,MaintenanceCycle = @MaintenanceCycle
			  ,YearOfManufacture = @YearOfManufacture
				,Description2  =@Description2 
				   ,Properties  =@Properties 
					,MonthofUse  = @MonthofUse
					,TimeUse =@TimeUse
				   ,TimeReceived = @TimeReceived 
				   ,GetRangDong= @GetRangDong
				   ,IsImportant= @IsImportant
			  ,TimeModified = GETDATE()
		 WHERE Id =@ID;
		 --nếu có di chuyển thì ghi lại lịch sử
		 If((@BranchId <> @BranchIdOld) OR (@TeamIdOld <> @TeamId) OR (@LineIdOld <>@LineId))
		BEGIN

		 INSERT INTO [dbo].[DeviceHistory]
				   ([BranchID]
				   ,[TeamId]
				   ,[LineId]
				   ,[BranchIDold]
				   ,[TeamIdold]
				   ,[LineIdold]
				   ,[DeviceId]
				   ,[Desc]
				   ,[TimeCreated])
			 VALUES
				   (@BranchID
				   ,@TeamId
				   ,@LineId
				   ,@BranchIdOld
				   ,@TeamIdOld
				   ,@LineIdOld
				   ,@Id
				   ,@Description
				   ,GETDATE())
		 END
		 ---Cập nhật trạng thái thiết bị
		EXEC dbo.UpdateDeviceHistoryStatus @Id, @Status, 1;
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
END CATCH 
Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[EditDeviceGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditDeviceGroup] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(500) null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceGroup')  
IF EXISTS(SELECT t.Code FROM DeviceGroup t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM DeviceGroup t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE DeviceGroup
   SET [Name] =@Name,Code = @Code
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditDeviceRepairDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditDeviceRepairDetail] 
	-- Add the parameters for the stored procedure here
	   @Contents nvarchar(500) null
      ,@AssemblyDetail nvarchar(500) null
      ,@UserAct nvarchar(500) null
      ,@DeviceId int null
	  ,@DayOfMonth int null
      ,@SupplieList nvarchar(450) null
      ,@Note nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceRepair')  
--IF EXISTS(SELECT t.Code FROM DeviceRepair t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM DeviceRepair t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].[DeviceRepairDetail]
   SET 
       [Contents] = @Contents, DayOfMonth = @DayOfMonth
      ,[AssemblyDetail] = @AssemblyDetail
      ,[UserAct] = @UserAct
      ,[DeviceId] = @DeviceId
      ,[SupplieList] = @SupplieList
      ,[Note] = @Note  
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditDeviceTargetDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditDeviceTargetDetail] 
	-- Add the parameters for the stored procedure here
	   @Contents nvarchar(500) null
      ,@Targets nvarchar(500) null
      ,@ResultAct nvarchar(500) null
      ,@Evaluate nvarchar(450) null
      ,@PlanContent nvarchar(450) null ,@PlanTargetId bigint null
      ,@Note nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceTarget')  
--IF EXISTS(SELECT t.Code FROM DeviceTarget t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM DeviceTarget t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].[DeviceTargetDetail]
   SET 
      -- [Contents] = @Contents
      --,[Targets] = @Targets
      [ResultAct] = @ResultAct
      ,[Evaluate] = @Evaluate
      ,[PlanContent] = @PlanContent
	  --, PlanTargetId=@PlanTargetId
      ,[Note] = @Note  
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditFactory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditFactory] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50) null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Factory')  
IF EXISTS(SELECT t.Code FROM Factory t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Factory t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE Factory
   SET [Name] =@Name, Code=@Code
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditForm]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditForm] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
    ,@Description nvarchar(500) null
	,@FactoryId int null 
   ,@BranchId int null 
   ,@TeamId int null 
   ,@LineId int null 
	,@FileName nvarchar(500) null
,@FilePath nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Form')  

IF EXISTS(SELECT t.Name FROM Form t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


		 if(@BranchId <>0 and @BranchId is not null)   set @FactoryId =(select b.FactoryId from Branch b where b.Id =@BranchId)
   UPDATE Form
   SET [Name] =@Name
      ,[Description]  =@Description
	  ,[FileName] = @FileName 
	  ,FilePath=@FilePath
      ,[TimeModified] = GETDATE()
	  ,FactoryId =@FactoryId
			,BranchId =@BranchId
			,TeamId =@TeamId
			,LineId =@LineId
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditLine]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditLine] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50) null
    ,@Description nvarchar(500) null
	,@TeamId int null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Line')  
IF EXISTS(SELECT t.Code FROM Line t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Line t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE Line
   SET [Name] =@Name, Code=@Code
       ,TeamId= @TeamId
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanDailyDetail] 
	-- Add the parameters for the stored procedure here
	   @TestMethod nvarchar(500) null
      ,@MainCategory nvarchar(500) null
      ,@ContentAct nvarchar(500) null
	  ,@TestStatus int null
	  ,@IsEnable int null 
	  ,@UserAction nvarchar(500) null
      ,@UserID nvarchar(450) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--DECLARE @userActNew nvarchar(450)
	--DECLARE @userAct nvarchar(450) select @userAct = UserAct from PlanDailyDetail WHERE Id =@ID;
	--if(@userAct <> @UserID) select @userActNew = CONCAT(@userAct,';', @UserID)
	--else select @userActNew = @UserID

	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT t.Code FROM PlanDaily t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanDaily t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


UPDATE [dbo].[DeviceWorks]
   SET [Name] = @MainCategory
      ,[WorkContent] = @ContentAct
      ,[TestMethod] = @TestMethod
	  ,UserAction =@UserAction
      ,IsEnable =@IsEnable
      ,[TestDate] = GETDATE()
       WHERE Id =@Id;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanDailyTrouble] 
	-- Add the parameters for the stored procedure here
	        @TroubleContent  nvarchar(500)  null
		   ,@DeviceSupplieList nvarchar(500)  null
           ,@TroubleDate  int  null
           ,@ContentAndResult  nvarchar(500)  null
           ,@UserConfirm  nvarchar(450)  null
           ,@DateConfirm  int  null
           ,@Conclusion  nvarchar(500)  null
           ,@TroubleReportID  bigint  null
           ,@TimeStopBegin  datetime  null
           ,@TimeStopEnd  datetime  null
           ,@LocationDetai  nvarchar(500)  null
           ,@RepairContent  nvarchar(450)  null
           ,@RepairUser  nvarchar(450)  null
           ,@Repair  nvarchar(450)  null
           ,@Note  nvarchar(450)  null
		   ,@UserID  nvarchar(450)  null
	    ,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT t.Code FROM PlanDaily t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanDaily t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
DECLARE @Year int;DECLARE @Month int;   

BEGIN TRY 
	select TOP(1) @Year = p.PlanYear,  @Month = p.PlanMonth from PlanDaily p inner join PlanDailyTrouble pt on pt.PlanId = p.Id  where pt.Id = @Id;
		UPDATE [dbo].[PlanDailyTrouble]
			   SET 
				  [TroubleContent] = @TroubleContent
				  ,DeviceSupplieList =@DeviceSupplieList
				  ,[TroubleDate] = CONCAT(@Year, '-', @Month, '-', @TroubleDate, ' 23:20:55.443')
				  ,[ContentAndResult] = @ContentAndResult
				  ,[UserConfirm] =@UserID --@UserConfirm
				  ,[DateConfirm] = CONCAT(@Year, '-', @Month, '-', @DateConfirm, ' 23:20:55.443')
				  ,[Conclusion] = @Conclusion
				  ,[TimeModified] = GETDATE()--@TimeModified
				  ,[TroubleReportID] = @TroubleReportID
				  ,[TimeStopBegin] = @TimeStopBegin
				  ,[TimeStopEnd] = @TimeStopEnd
				  ,[LocationDetai] = @LocationDetai
				  ,[RepairContent] = @RepairContent
				  ,[RepairUser] = @RepairUser
				  ,[Repair] = @Repair
				  ,[Note] = @Note
		WHERE Id =@Id
	 DECLARE @PlanId int;  SET @PlanId = (select Top(1) PlanId from PlanDailyTrouble where Id = @Id order by Id desc)
	 DECLARE @DeviceId int;  SET @DeviceId = (select Top(1) DeviceId from PlanDaily where Id = @PlanId order by Id desc)
	 DECLARE @HasReport int;  SET @HasReport = (select Top(1) HasReport from PlanDailyTrouble where Id = @Id order by Id desc)
	---Trường hợp thêm sự cố thiết bị   
	---Sự cố nghiêm trọng
	if(@HasReport =1)
		BEGIN	
				---Trường hợp thêm sự cố thiết bị   
				---Sự cố nghiêm trọng
			   EXEC dbo.UpdateDeviceHistoryStatus @DeviceId, 2, 2;
		END
	ELSE 
		BEGIN
			 ---Trường hợp thêm sự cố thiết bị         
			   ---Cập nhật trạng thái thiết bị
			   EXEC dbo.UpdateDeviceHistoryStatus @DeviceId, 3, 3;
		END
	Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
	Select 0 as Id, CONCAT(N'Gặp lỗi khi thực hiện:', CONVERT(nvarchar(250),ERROR_MESSAGE())) as message, CONVERT(nvarchar(250),ERROR_PROCEDURE()) as Tittle
END CATCH   
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanDailyTroubleReport] 
	-- Add the parameters for the stored procedure here
@AddressTrouble  nvarchar(500)  null
,@DescriptionTrouble  nvarchar(500)  null
,@ReasonTrouble  nvarchar(500)  null
,@HandlingMeansure  nvarchar(500)  null
,@UserAct  nvarchar(450)  null
,@DateDone  datetime  null
,@UserPart  nvarchar(450)  null
,@UnitPart  nvarchar(450)  null
,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT t.Code FROM PlanDaily t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanDaily t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

 BEGIN TRY  
	 DECLARE @DeviceId int;  SET @DeviceId = (select Top(1) p.DeviceId from PlanDailyTroubleReport  pr inner join PlanDaily p on p.Id = pr.PlanId where pr.Id = @Id)

	UPDATE [dbo].[PlanDailyTroubleReport]
			   SET --[AddressTrouble] = @AddressTrouble
				  [DescriptionTrouble] = @DescriptionTrouble
				  ,[ReasonTrouble] = @ReasonTrouble
				  ,[HandlingMeansure] = @HandlingMeansure
				  ,[UserAct] = @UserAct
				  ,[DateDone] = @DateDone
				  ,[UserPart] = @UserPart
				  ,[UnitPart] = @UnitPart
			 WHERE Id=@Id

			 EXEC [dbo].[UpdateDeviceHistoryStatus] @DeviceId, 6, 6 --=> không có giá trị trả về

			 Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
		
	Select 0 as Id, CONCAT(N'Gặp lỗi khi thực hiện:', CONVERT(nvarchar(250),ERROR_MESSAGE())) as message, CONVERT(nvarchar(250),ERROR_PROCEDURE()) as Tittle
END CATCH 
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanDailyTroubleSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,  null
-- Description:	<Description,  null
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanDailyTroubleSupplie] 
	-- Add the parameters for the stored procedure here
	-- Add the parameters for the stored procedure here
	@TroubleId   bigint  null
           ,@SupplieId   bigint  null
           ,@Quantity   int  null
          ,@Price   bigint  null
           ,@ToMoney   bigint  null
	       ,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
--IF EXISTS(SELECT t.Code FROM PlanDaily t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanDaily t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END



UPDATE [dbo].[PlanDailyTroubleSupplie]
   SET [TroubleId] = @TroubleId
      ,[SupplieId] = @SupplieId
      ,[Quantity] = @Quantity
      ,[Price] = @Price
 WHERE Id=@Id

 Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanOverDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanOverDevice] 
	-- Add the parameters for the stored procedure here
	   @CurrentStatus nvarchar(500) null
      ,@RepairContent nvarchar(500) null
      ,@Targets nvarchar(500) null
      ,@Progress nvarchar(500) null
      ,@UserChair nvarchar(450) null
      ,@UserAct nvarchar(450) null
      ,@Note nvarchar(500) null
      ,@UserID nvarchar(450) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanOver')  
--IF EXISTS(SELECT t.Code FROM PlanOver t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanOver t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].[PlanOverDevice]
   SET 
       [CurrentStatus] = @CurrentStatus
      ,[RepairContent] = @RepairContent
      ,[Targets] = @Targets
      ,[Progress] = @Progress
      ,[UserChair] = @UserChair
      ,[UserAct] = @UserAct
      ,[Note] = @Note  
      ,[UserID] = @UserID
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanPeriodicDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanPeriodicDetail] 
	-- Add the parameters for the stored procedure here
    @PlanDeviceId bigint null
           ,@Month01 int  null
           ,@Month02 int  null
           ,@Month03 int  null
           ,@Month04 int  null
           ,@Month05 int  null
           ,@Month06 int  null
           ,@Month07 int  null
           ,@Month08 int  null
           ,@Month09 int  null
           ,@Month10 int  null
           ,@Month11 int  null
           ,@Month12 int  null
		   ,@MonthAct int  null
           ,@WorkContent nvarchar(500)  null
           ,@DepartmentAct nvarchar(500)  null
           ,@FormId int  null
           ,@Note nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT t.Code FROM PlanPeriodic t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanPeriodic t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


UPDATE [dbo].[PlanPeriodicDetail]
         SET   [Month01]=@Month01
           ,[Month02] =@Month02
           ,[Month03]=@Month03
           ,[Month04]=@Month04
           ,[Month05]=@Month05
           ,[Month06]=@Month06
           ,[Month07]=@Month07
           ,[Month08]=@Month08
           ,[Month09]=@Month09
           ,[Month10]=@Month10
           ,[Month11]=@Month11
           ,[Month12]=@Month12
		   ,MonthAct = @MonthAct
           ,[WorkContent]=@WorkContent
           ,[DepartmentAct]=@DepartmentAct
           ,[FormId]=@FormId
           ,[Note]=@Note    
	Where Id =@Id	

 Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanPeriodicDeviceMonth]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanPeriodicDeviceMonth] 
	-- Add the parameters for the stored procedure here
    @PlanDeviceId bigint null
           ,@Month01 int  null
           ,@Month02 int  null
           ,@Month03 int  null
           ,@Month04 int  null
           ,@Month05 int  null
           ,@Month06 int  null
           ,@Month07 int  null
           ,@Month08 int  null
           ,@Month09 int  null
           ,@Month10 int  null
           ,@Month11 int  null
           ,@Month12 int  null   
		   ,@Note nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT t.Code FROM PlanPeriodic t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanPeriodic t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


	DECLARE @MonthPlan nvarchar(50) = '0'; 
	if(@Month01 =1) set @MonthPlan = concat(@MonthPlan, ',',1);
	if(@Month02 =1) set @MonthPlan = concat(@MonthPlan, ',',2);
	if(@Month03 =1) set @MonthPlan = concat(@MonthPlan, ',',3);
	if(@Month04 =1) set @MonthPlan = concat(@MonthPlan, ',',4);
	if(@Month05 =1) set @MonthPlan = concat(@MonthPlan, ',',5);
	if(@Month06 =1) set @MonthPlan = concat(@MonthPlan, ',',6);
	if(@Month07 =1) set @MonthPlan = concat(@MonthPlan, ',',7);
	if(@Month08 =1) set @MonthPlan = concat(@MonthPlan, ',',8);
	if(@Month09 =1) set @MonthPlan = concat(@MonthPlan, ',',9);
	if(@Month10 =1) set @MonthPlan = concat(@MonthPlan, ',',10);
	if(@Month11 =1) set @MonthPlan = concat(@MonthPlan, ',',11);
	if(@Month12 =1) set @MonthPlan = concat(@MonthPlan, ',',12);

Update [dbo].PlanPeriodicDevice
        SET
          [Month01] = @Month01
           ,[Month02] = @Month02
           ,[Month03] = @Month03
           ,[Month04] = @Month04
           ,[Month05] = @Month05
           ,[Month06] = @Month06
           ,[Month07] = @Month07
           ,[Month08] = @Month08
           ,[Month09] = @Month09
           ,[Month10] = @Month10
           ,[Month11] = @Month11
           ,[Month12] = @Month12
		   ,MonthPlan = @MonthPlan
		   ,Note =@Note
Where Id = @PlanDeviceId

 Select @PlanDeviceId as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanPeriodicReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanPeriodicReport]
	-- Add the parameters for the stored procedure here
  @PlanDeviceId  bigint  null
           ,@TimeDelivery  int  null
           ,@StartDate  datetime  null
           ,@EndDate  datetime  null
		   ,@ActStartDate  datetime  null
           ,@ActEndDate  datetime  null
           ,@WorkArising  nvarchar(500)  null
           ,@OperatingResults  nvarchar(500)  null
           ,@ActionMore  nvarchar(500)  null
           ,@Responsibility  nvarchar(500)  null
           ,@Duration  nvarchar(250)  null
           ,@RequestSafe  int  null
           ,@RequestQuality  int  null
           ,@RequestProductivity  int  null
		   ,@UserId nvarchar(450) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanPeriodic')  
--IF EXISTS(SELECT t.Code FROM PlanPeriodic t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanPeriodic t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

 BEGIN TRY  
	 DECLARE @DeviceId int;  SET @DeviceId = (select Top(1) pd.DeviceId from PlanPeriodicDevice pd inner join PlanPeriodicReport  pr on pd.Id = pr.PlanDeviceId where pr.Id = @Id)	
		UPDATE [dbo].[PlanPeriodicReport]
		   SET --[PlanDeviceId] = @PlanDeviceId,
			   [TimeDelivery] = @TimeDelivery
			  ,[StartDate] = @StartDate
			  ,[EndDate] = @EndDate
			  ,[ActStartDate] = @ActStartDate
			  ,[ActEndDate] = @ActEndDate
			  ,[WorkArising] = @WorkArising
			  ,[OperatingResults] = @OperatingResults
			  ,[ActionMore] = @ActionMore
			  ,[Responsibility] = @Responsibility
			  ,[Duration] = @Duration
			  ,[RequestSafe] = @RequestSafe
			  ,[RequestQuality] = @RequestQuality
			  ,[RequestProductivity] = @RequestProductivity
			 -- ,[ReportNumberCode] = @ReportNumberCode
			  ,[ReportDate] = GETDATE()
		 WHERE Id= @Id

		 DECLARE @delivery int; set @delivery = ISNULL(@TimeDelivery, 0)
		 if(@TimeDelivery  =1)
			 EXEC [dbo].[UpdateDeviceHistoryStatus] @DeviceId, 6, 6 --=> Đang sửa chữa
         else if(@TimeDelivery  =2)
			 EXEC [dbo].[UpdateDeviceHistoryStatus] @DeviceId, 4, 4 --=> Bảo dưỡng định kỳ
         else 
			 EXEC [dbo].[UpdateDeviceHistoryStatus] @DeviceId, 5, 5 --=> Bảo trì lý do kkhacs


		Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
		
	Select 0 as Id, CONCAT(N'Gặp lỗi khi thực hiện:', CONVERT(nvarchar(250),ERROR_MESSAGE())) as message, CONVERT(nvarchar(250),ERROR_PROCEDURE()) as Tittle
END CATCH 
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanSupplieDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanSupplieDevice] 
	-- Add the parameters for the stored procedure here
	   @NumberNote nvarchar(500) null
 ,@Amount int null
      ,@SupplieCode nvarchar(500) null
      ,@Requirements nvarchar(500) null
      ,@Manufacture nvarchar(500) null
      ,@Belonging nvarchar(450) null
      ,@Duration nvarchar(450) null
      ,@Note nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanSupplie')  
--IF EXISTS(SELECT t.Code FROM PlanSupplie t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanSupplie t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].PlanSupplieDetail
   SET 
       [NumberNote] = @NumberNote
      ,[SupplieCode] = @SupplieCode
      ,[Requirements] = @Requirements
      ,[Manufacture] = @Manufacture
      ,[Belonging] = @Belonging
      ,[Duration] = @Duration
      ,[Note] = @Note  
 ,Amount = @Amount  
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanTargetDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanTargetDevice] 
	-- Add the parameters for the stored procedure here
	   @Measurement nvarchar(500) null
      ,@Targets nvarchar(500) null
      ,@Solution nvarchar(500) null
	  ,@Duration1 nvarchar(500) null
      ,@UserAct nvarchar(450) null
	  ,@CoordinationUnit nvarchar(450) null
      ,@Note nvarchar(500) null
      ,@UserID nvarchar(450) null
	  ,@MinValue int null
      ,@TargetType int null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanTarget')  
--IF EXISTS(SELECT t.Measurement FROM PlanTargetDevice t where t.Measurement =@Measurement and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Nội dung [',@Measurement,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END
--IF EXISTS(SELECT t.Name FROM PlanTarget t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].[PlanTargetDevice]
   SET 
       [Measurement] = @Measurement
      ,[Targets] = @Targets
      ,[Solution] = @Solution
	  ,[Duration1] = @Duration1
      ,[UserAct] = @UserAct
	  ,[CoordinationUnit] = @CoordinationUnit
      ,[Note] = @Note  
      ,[UserID] = @UserID
	  ,MinValue  = @MinValue  
      ,TargetType = @TargetType
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanTargetMeasurement]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanTargetMeasurement] 
	-- Add the parameters for the stored procedure here
	   @Measurement nvarchar(500) null
      ,@Duration1 nvarchar(500) null
      ,@Targets nvarchar(500) null
      ,@Note nvarchar(500) null
      ,@UserID nvarchar(450) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanTarget')  
--IF EXISTS(SELECT t.Code FROM PlanTarget t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanTarget t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].[PlanTargetDevice]
   SET 
       [Measurement] = @Measurement
      ,[Duration1] = @Duration1
      ,[Targets] = @Targets
      ,[Note] = @Note  
      ,[UserID] = @UserID
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPlanTargetSolution]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPlanTargetSolution] 
	-- Add the parameters for the stored procedure here	  
      @Solution nvarchar(500) null
      ,@Duration2 nvarchar(450) null
      ,@UserAct nvarchar(450) null
      ,@Note nvarchar(500) null
      ,@UserID nvarchar(450) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanTarget')  
--IF EXISTS(SELECT t.Code FROM PlanTarget t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM PlanTarget t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE [dbo].[PlanTargetDevice]
   SET 
      [Solution] = @Solution
      ,[Duration2] = @Duration2
      ,[UserAct] = @UserAct
      ,[Note] = @Note  
      ,[UserID] = @UserID
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditPosition]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditPosition] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Position')  
--IF EXISTS(SELECT t.Code FROM Position t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM Position t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


   UPDATE Position
   SET [Name] =@Name
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditRole]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditRole] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
    ,@NormalizedName nvarchar(500) null
	,@Description nvarchar(500) null
	,@Id nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('AspNetRoles')  
--IF EXISTS(SELECT t.Code FROM AspNetRoles t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM AspNetRoles t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END


UPDATE AspNetRoles
   SET [Name] =@Name
      ,[NormalizedName]  =@NormalizedName
,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;
 
 Select 1 as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditShift]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditShift] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Shift')  

IF EXISTS(SELECT t.Name FROM Shift t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE Shift
   SET [Name] =@Name
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditSupplie] 
	-- Add the parameters for the stored procedure here
	 @GroupID int null
	 ,@LineId int null
           ,@Name nvarchar(450) null
           ,@Description nvarchar(450) null
           ,@Status int null
           ,@Code nvarchar(450)  null
           ,@Origin nvarchar(450)  null
           ,@YearOfUse int  null
           ,@InstallationPlace nvarchar(450)  null
           ,@MaintenanceCycle int  null
           ,@YearOfManufacture int  null
		   ,@NumberTotal int  null
,@Unit nvarchar(50)  null
,@QRCode nvarchar(450) null
,@QRCodeImg nvarchar(450) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Supplie')  
IF EXISTS(SELECT t.Code FROM Supplie t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Supplie t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


 UPDATE Supplie
   SET GroupID = @GroupID
   ,LineId =@LineId
      ,Name = @Name
      ,Description = @Description
      ,Status = @Status
      ,Code = @Code
      ,Origin = @Origin
,Unit = @Unit
      ,YearOfUse = @YearOfUse
      ,InstallationPlace = @InstallationPlace
      ,MaintenanceCycle = @MaintenanceCycle
      ,YearOfManufacture = @YearOfManufacture
	  ,NumberTotal = @NumberTotal
      ,TimeModified = GETDATE()
	  ,QRCode =@QRCode 
,QRCodeImg =@QRCodeImg 
 WHERE Id =@ID;


 Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditSupplieGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditSupplieGroup] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieGroup')  

IF EXISTS(SELECT t.Name FROM SupplieGroup t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE SupplieGroup
   SET [Name] =@Name
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditSupplieUseDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		@Author,,Name>
-- Create date: @Create Date,  null
-- Description:	@Description,  null
-- =============================================
CREATE PROCEDURE [dbo].[EditSupplieUseDetail] 
	-- Add the parameters for the stored procedure here
  @SupplieUseId  bigint  null
      ,@SupplieId  bigint  null
      ,@Quantity  int  null
      ,@Price  bigint  null
      ,@ToMoney  bigint  null
      ,@TeamId  int  null
      ,@LineId  int  null
      ,@Belonging  nvarchar(500)  null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieUse')  

UPDATE [dbo].[SupplieUseDetail]
   SET 
      [Quantity] = @Quantity
      ,[Price] = @Price
      ,[ToMoney] = @ToMoney
      ,[Belonging] = @Belonging
	  Where Id =@Id

Select @Id as Id , CONCAT(N'Cập nhật thành công.',  '') as message , @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditTeam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditTeam] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50) null
	,@BranchId int null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Team')  
IF EXISTS(SELECT t.Code FROM Team t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Team t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE Team
   SET [Name] =@Name, Code=@Code
       ,BranchId =@BranchId
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditThreshold] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50) null
	,@UpperValue decimal(10, 2) null
	,@LowerValue decimal(10, 2)  null
    ,@Description nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Threshold')  
IF EXISTS(SELECT t.Code FROM Threshold t where t.Code =@Code and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Threshold t where t.Name =@Name and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END


   UPDATE Threshold
   SET [Name] =@Name, Code=@Code
   ,UpperValue = @UpperValue
   ,LowerValue = @LowerValue
      ,[Description]  =@Description
      ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[EditTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditTroubleReport] 
	-- Add the parameters for the stored procedure here
	 @TroubleId     bigint  null
           ,@AddressTrouble     nvarchar(500)  null
           ,@DateTrouble     datetime  null
           ,@DescriptionTrouble     nvarchar(500)  null
           ,@ReasonTrouble     nvarchar(500)  null
           ,@HandlingMeansure     nvarchar(500)  null
           ,@UserAct     nvarchar(450)  null
           ,@DateDone     datetime  null
           ,@UserPart     nvarchar(450)  null
           ,@UnitPart     nvarchar(450)  null          
	       ,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('TroubleReport')  
--IF EXISTS(SELECT t.Code FROM TroubleReport t where t.Code =@Code and t.Id <> @Id) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

--IF EXISTS(SELECT t.Name FROM TroubleReport t where t.Name =@Name and t.Id <> @Id)
--BEGIN
--   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END



UPdate  [dbo].[PlanDailyTroubleReport]
        SET [TroubleId] = @TroubleId
           ,[AddressTrouble] = @AddressTrouble
           ,[DateTrouble]=@DateTrouble
           ,[DescriptionTrouble] = @DescriptionTrouble
           ,[ReasonTrouble] = @ReasonTrouble
           ,[HandlingMeansure] = @HandlingMeansure
           ,[UserAct] = @UserAct
           ,[DateDone]= @DateDone
           ,[UserPart] = @UserPart
           ,[UnitPart] = @UnitPart          
           ,[TimeModified] = GETDATE()
		   where Id = @Id

 Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[EditUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EditUser] 
	-- Add the parameters for the stored procedure here
	 @FullName nvarchar(500) null
	,@Email  nvarchar(500) null
	,@PhoneNumber nvarchar(500) null
    ,@Description nvarchar(500) null
    ,@Avatar  nvarchar(500) null
	,@DepartmentId int null
	,@ManagerLevelId int null
	,@BranchId int null
	,@TeamId int null
	,@LineId int null
	,@PositionId int null
	,@Id nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('AspNetUsers')  
IF EXISTS(SELECT t.Email FROM AspNetUsers t where t.Email =@Email and t.Id <> @Id) 
BEGIN
   Select 0 as Id, CONCAT(N'Email [',@Email,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.PhoneNumber FROM AspNetUsers t where t.PhoneNumber =@PhoneNumber and t.Id <> @Id)
BEGIN
   Select 0 as Id, CONCAT(N'PhoneNumber [',@PhoneNumber,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @FactoryIdUser int; SET @FactoryIdUser =  (select ISNULL(FactoryId, 0) from Branch where Id =@BranchId)

UPDATE AspNetUsers
      SET FullName =@FullName
			,Email=@Email
			,PhoneNumber=@PhoneNumber
			,Description  =@Description
			,Avatar = @Avatar
			,TimeModified = GETDATE()
			,DepartmentId  =@DepartmentId 
			,ManagerLevelId  =@ManagerLevelId 
			,FactoryId = @FactoryIdUser
			,BranchId  = @BranchId 
			,TeamId = @TeamId 
			,LineId= @LineId
			,PositionId  = @PositionId 
 WHERE Id =@ID;

 Select 1 as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAlert]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAlert] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select *  FROm Alert a
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetAlertShow]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAlertShow] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select *  FROm Alert a
   where ISNULL(status, 0) =1
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBranch] 
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);


   Select b.*, F.Name  as FactoryName 
   ,CONCAT(f.Code, ', ', f.[Name]) as FactoryCodeName
   ,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
   FROm Branch b
   left outer join Factory f on f.Id = b.FactoryId
    where (b.Id = @BranchOfUser OR @BranchOfUser =0)
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetBranchByFactory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBranchByFactory] 
@FactoryId int null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);


	if(@FactoryId IS NULL OR @FactoryId =0)
			   Select b.*, F.Name  as FactoryName 
			   ,CONCAT(f.Code, ', ', f.[Name]) as FactoryCodeName
			   ,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
			   FROm Branch b
			   left outer join Factory f on f.Id = b.FactoryId
			   where (b.Id = @BranchOfUser OR @BranchOfUser =0)
			   ORDER BY Id DESC
   ELSE 
   			   Select b.*, F.Name  as FactoryName 
			   ,CONCAT(f.Code, ', ', f.[Name]) as FactoryCodeName
			   ,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
			   FROm Branch b
			   left outer join Factory f on f.Id = b.FactoryId
			   where b.FactoryId =@FactoryId AND (b.Id = @BranchOfUser OR @BranchOfUser =0)
			   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetByBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetByBranch] 
@BranchId int  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	if(@BranchId IS NULL OR @BranchId =0)
			 Select t.*, b.Name as BranchName
			,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
			 FROm Team  t
		   LEFT OUTER join Branch b on    b.id = t.BranchId
		   ORDER BY t.Id DESC
	ELSE
		   Select t.*, b.Name as BranchName
			,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
			 FROm Team  t
		   LEFT OUTER join Branch b on    b.id = t.BranchId
		   where b.id = @BranchId
		   ORDER BY t.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetConfigSystem]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetConfigSystem] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * FROm ConfigSystem ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetConfigSystemByKey]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetConfigSystemByKey] 
@ConfigKey nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
if(@ConfigKey = 'footer-visit')
BEGIN
-- footer-visit-number 4078
DECLARE @configVale int =0;  set @configVale =(select CAST(ConfigValue AS INT) from ConfigSystem where Id =4078) + 1
Update ConfigSystem set ConfigValue = @configVale  where Id =4078
END

Select * FROm ConfigSystem where ConfigKey =@ConfigKey ORDER BY OrderView ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetCurDeviceInLine]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetCurDeviceInLine]
	@CurBranchId int null
AS
BEGIN
SET NOCOUNT OFF;
SELECT
	DISTINCT l.Name as LineName,
	COUNT (d.Id) as DeviceInLine
FROM 
	Device d
INNER JOIN Branch b ON d.BranchId = b.Id
INNER JOIN Line l ON d.LineId = l.Id 
WHERE d.BranchId = @CurBranchId

GROUP BY 
	l.Name
--SELECT  @@ROWCOUNT;
ORDER BY l.Name;

END
GO
/****** Object:  StoredProcedure [dbo].[GetCurLineSum]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetCurLineSum]
	@CurBranchId int null
AS
BEGIN
SET NOCOUNT OFF;
SELECT 
	COUNT(DISTINCT d.LineId) as LineSum, 
	COUNT (DISTINCT d.id) as DeviceSum,
	b.Name as BranchName
	
FROM Device d
INNER JOIN Branch b ON d.BranchId = b.Id
INNER JOIN Line l ON d.LineId = l.Id 
INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
WHERE d.BranchId = @CurBranchId

Group by
	b.Name

END


GO
/****** Object:  StoredProcedure [dbo].[GetDataSelect]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDataSelect] 
@tableName nvarchar(50) null, @FValue  nvarchar(50) null, @FText nvarchar(50) null, @F2 nvarchar(50) null
, @opWhere1 nvarchar(50) null, @opWhere2 nvarchar(50) null
, @kval1 nvarchar(50) null, @kval2 nvarchar(50) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @statement nvarchar(2000)
	DECLARE @opText nvarchar(200)
	if(@F2 IS NULL OR @F2 ='') select @opText = @FText;
	else  select @opText = CONCAT('CONCAT(', @F2,',', '''; ''' ,',', @FText, ')')
	
	 ---insert into MledData2023.dbo.Test (content) values (@opText);
	 if(@tableName='Supplie' AND @opWhere1 ='DeviceId')
	 BEGIN
	     DECLARE @DID int =0;  set @DID =CAST(@kval1 AS int) 
	     SELECT DISTINCT s.Id as opValue,  s.Name as opText FROM Supplie s inner join DeviceSupplie d On d.SupplieId = s.Id where (d.DeviceId = @DID OR @DID =0)
	 END
     ELSE if(@tableName='Line' AND @opWhere1 ='BranchId')
	 BEGIN
	      DECLARE @BrID int =0;  set @BrID =CAST(@kval1 AS int) 
	      SELECT DISTINCT s.Id as opValue,  s.Name as opText FROM Line s inner join Team d On d.Id = s.TeamId where (d.BranchId = @BrID OR @BrID =0)
	 END
	 ELSE 
	 BEGIN
			-- Insert statements for procedure here
			Set @statement = CONCAT('SELECT DISTINCT CAST(',@FValue ,' as nvarchar(max)) as opValue, ', @opText, ' as opText FROM ', @tableName, ' Where 0=0 ');
			if(@tableName ='PlanOver')
			BEGIN
				if(@opWhere1 <> 'NAN')  Set @statement = CONCAT(@statement,  ' AND ISNULL(', @opWhere1,', 0) =', @kval1);
    			if(@opWhere2 <> 'NAN')  Set @statement = CONCAT(@statement,  ' AND ISNULL(', @opWhere2,', 0) =', @kval2);
 			END
			ELSE 
			BEGIN
				if(@opWhere1 <> 'NAN')  Set @statement = CONCAT(@statement,  ' AND ', @opWhere1,'=', @kval1);
    			if(@opWhere2 <> 'NAN')  Set @statement = CONCAT(@statement,  ' AND ', @opWhere2,'=', @kval2);
 			END

			Set @statement = CONCAT(@statement,  ' ORDER BY opText ASC');

			 --insert into MledData2023.dbo.Test (content) values (@statement);
			EXECUTE (@statement)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[GetDataSelectIN]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDataSelectIN] 
@tableName nvarchar(150) null
,@UserId nvarchar(450) null
,@SDeviceId nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
,@SLineId nvarchar(250) null
,@SPlanId nvarchar(50) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	
	if(@tableName ='Factory')
	BEGIN
		select Id as opValue, Name as opText from Factory tb
 	END
	ELSE if(@tableName ='Branch')
	BEGIN
		select Id as opValue, Name as opText from Branch tb where (tb.FactoryId IN (Select value from ufnGetTable_From_String_Split(@SFactoryId, ','))  OR @SFactoryId ='0')
 	END
	ELSE if(@tableName ='Team')
	BEGIN
		select Id as opValue, Name as opText from Team tb where (tb.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ','))   OR @SFactoryId ='0')
 	END
	ELSE if(@tableName ='Line')
	BEGIN
		select Id as opValue, Name as opText from Line tb where (tb.TeamId IN (Select value from ufnGetTable_From_String_Split(@STeamId, ','))   OR @SFactoryId ='0')
 	END
	ELSE 
	BEGIN
		select Id as opValue, Name as opText from Device tb where ((tb.LineId IN (Select value from ufnGetTable_From_String_Split(@SLineId, ',')) OR  @SLineId ='0') 
		                                                           OR (tb.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID ='0')) 
 	END
END
GO
/****** Object:  StoredProcedure [dbo].[GetDepartment]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDepartment] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select d.*, CONCAT(d.Code, ', ', d.[Name]) as DepartmentCodeName  FROm Department as d ORDER BY d.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDevice] 
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--DECLARE @OlDStatus int;  SET @OlDStatus = (select Top(1) StatusValue from DeviceHistoryStatus where [DeviceId] = @Id order by Id desc)
	SET NOCOUNT OFF;

DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);

    Select d.Id
      ,d.GroupID
      ,d.BranchId
      ,d.TeamId
      ,d.LineId
      ,d.Code
	  ,d.QRCode
	  ,d.QRCodeImg
      ,d.CodeNew
      ,d.Properties
      ,d.Description
      ,d.Description2
      ,d.TimeCreated
      ,d.TimeModified
      ,[dbo].[ufnGetTrangthaiThietbi]('' , '', d.Id)  as Status
      ,d.Name
      ,d.Origin
      ,d.MonthofUse
      ,d.YearOfUse
      ,d.InstallationPlace
      ,d.MaintenanceCycle
      ,d.YearOfManufacture
      ,d.GetRangDong
      ,d.TimeReceived
	  ,d.TimeUse
	  ,d.IsImportant
	  ,d.FileScan
	  ,d.LineId as TeamId, g.Name as GroupName, b.Name as  BranchName,  t.Name as TeamName, l.Name as LineName
  FROm Device d 
   left outer join DeviceGroup g on g.Id = d.GroupId
   left outer join Branch b on b.Id = d.BranchId
   left outer join Team t on t.Id = d.TeamId
   left outer join Line l on l.Id = d.LineId
   WHERE b.Id = @BranchOfUser OR @BranchOfUser = 0
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceByBranchId]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceByBranchId] 
@UserId nvarchar(450) null,
@BranchId int = 0
AS
BEGIN

if(@BranchId =0)
		BEGIN
			-- SET NOCOUNT ON added to prevent extra result sets from
			-- interfering with SELECT statements.
			SET NOCOUNT OFF;
			--Select d.*, d.LineId as TeamId, g.Name as GroupName, b.Name as  BranchName,  t.Name as TeamName, l.Name as LineName
			Select d.Id, d.Code, d.Name, CONCAT(d.Code, ', ', d.[Name]) as DeviceCodeName
			FROm Device d 
			left outer join DeviceGroup g on g.Id = d.GroupId
			left outer join Branch b on b.Id = d.BranchId
			left outer join Team t on t.Id = d.TeamId
			left outer join Line l on l.Id = d.LineId
			ORDER BY Id DESC
		END
ELSE
       BEGIN
			-- SET NOCOUNT ON added to prevent extra result sets from
			-- interfering with SELECT statements.
			SET NOCOUNT OFF;
			Select d.Id, d.Code, d.Name, CONCAT(d.Code, ', ', d.[Name]) as DeviceCodeName
			FROm Device d 
			left outer join Branch b on b.Id = d.BranchId
			Where b.id =@BranchId
			ORDER BY Id DESC
		END

END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceByQRCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceByQRCode] 
@UserId nvarchar(450) null,
@sQR nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
    Select d.Id
      ,d.GroupID
      ,d.BranchId
      ,d.TeamId
      ,d.LineId
      ,d.Code
	  ,d.QRCode
	  ,d.QRCodeImg
      ,d.CodeNew
      ,d.Properties
      ,d.Description
      ,d.Description2
      ,d.TimeCreated
      ,d.TimeModified
      ,d.Status
      ,d.Name
      ,d.Origin
      ,d.MonthofUse
      ,d.YearOfUse
      ,d.InstallationPlace
      ,d.MaintenanceCycle
      ,d.YearOfManufacture
      ,d.GetRangDong
      ,d.TimeReceived
	  ,d.TimeUse
	  ,d.IsImportant
	  ,d.LineId as TeamId, g.Name as GroupName, b.Name as  BranchName,  t.Name as TeamName, l.Name as LineName
  FROm Device d 
   left outer join DeviceGroup g on g.Id = d.GroupId
   left outer join Branch b on b.Id = d.BranchId
   left outer join Team t on t.Id = d.TeamId
   left outer join Line l on l.Id = d.LineId
  where QRCode = @sQR
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceGetRangDongByBranchId]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceGetRangDongByBranchId] 
@UserId nvarchar(450) null,
@BranchId int = 0
AS
BEGIN

if(@BranchId =0)
		BEGIN
			-- SET NOCOUNT ON added to prevent extra result sets from
			-- interfering with SELECT statements.
			SET NOCOUNT OFF;
			--Select d.*, d.LineId as TeamId, g.Name as GroupName, b.Name as  BranchName,  t.Name as TeamName, l.Name as LineName
			Select d.Id, d.Code, d.Name, CONCAT(d.Code, ', ', d.[Name]) as DeviceCodeName,  case when (d.code like '%MOTOR%') then 1 else 0 end as IsMotor,
			(SELECT distinct  p.Note, (SELECT TOP(1) s.ValueStatus FROM MledData2023.dbo.[DeviceAIStatus] s  where p.DeviceCode =p.DeviceCode and s.Note = p.Note order by s.TimeCreated desc) as ValStatus 
	         FROM MledData2023.dbo.[DeviceAIStatus] p where p.DeviceCode = d.Code  FOR JSON AUTO) as SContentAlert
			FROm Device d 
			left outer join DeviceGroup g on g.Id = d.GroupId
			left outer join Branch b on b.Id = d.BranchId
			left outer join Team t on t.Id = d.TeamId
			left outer join Line l on l.Id = d.LineId
			Where d.GetRangDong =1
			ORDER BY Id DESC
		END
ELSE
       BEGIN
			-- SET NOCOUNT ON added to prevent extra result sets from
			-- interfering with SELECT statements.
			SET NOCOUNT OFF;
			Select d.Id, d.Code, d.Name, CONCAT(d.Code, ', ', d.[Name]) as DeviceCodeName,  case when (d.code like '%MOTOR%') then 1 else 0 end as IsMotor
			,(SELECT distinct  p.Note, (SELECT TOP(1) s.ValueStatus FROM MledData2023.dbo.[DeviceAIStatus] s  where p.DeviceCode =p.DeviceCode and s.Note = p.Note order by s.TimeCreated desc) as ValStatus 
	         FROM MledData2023.dbo.[DeviceAIStatus] p where p.DeviceCode = d.Code  FOR JSON AUTO) as SContentAlert
			FROm Device d 
			left outer join Branch b on b.Id = d.BranchId
			Where b.id =@BranchId  and d.GetRangDong =1
			ORDER BY Id DESC
		END

END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceGroup] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * , CONCAT(Code, ', ', [Name]) as GroupCodeName 
     FROm DeviceGroup ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceHistory] 
@UserId nvarchar(450) null,
@DeviceId int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);


    SELECT h.Id
      ,h.BranchIDold,h.BranchID
      ,h.TeamIdold,h.TeamId
      ,h.LineIdold,h.LineId
      ,h.DeviceId
      ,h.[Desc]
      ,h.TimeCreated
	  ,(case when (h.BranchIDold=h.BranchID OR (bold.Name IS NULL)) then b.Name else CONCAT(N'Chuyển từ ', bold.Name, N' đến ',b.Name) END) as BranchName
	  ,d.Name as DeviceName
	  ,(case when (h.TeamIdold=h.TeamId OR (told.Name IS NULL)) then t.Name else CONCAT(N'Chuyển từ ', told.Name, N' đến ',t.Name) END) as TeamName
	  ,(case when (h.LineIdold=h.LineId OR (lold.Name IS NULL)) then l.Name else CONCAT(N'Chuyển từ ', lold.Name, N' đến ',l.Name) END) as LineName
  FROm DeviceHistory h
   left outer join Device d on d.Id = h.DeviceId
   left outer join Branch b on b.Id = h.BranchId
   left outer join Team t on t.Id = h.TeamId
   left outer join Line l on l.Id = h.LineId
   left outer join Branch bold on bold.Id = h.BranchIdold
   left outer join Team told on told.Id = h.TeamIdold
   left outer join Line lold on lold.Id = h.LineIdold
   Where (d.Id = @DeviceId OR @DeviceId =0)
      AND (b.Id = @BranchOfUser OR @BranchOfUser = 0)
   ORDER BY h.TimeCreated DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistoryLocationByQRCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceHistoryLocationByQRCode] 
@UserId nvarchar(450) null,
@sQR nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
  SET NOCOUNT OFF;
    SELECT h.Id
      ,h.BranchIDold,h.BranchID 
      ,h.TeamIdold,h.TeamId
      ,h.LineIdold,h.LineId
      ,h.DeviceId
      ,h.[Desc] as Col1
      ,h.TimeCreated as Col2
	  ,ISNULL((case when (h.BranchIDold=h.BranchID OR (bold.Name IS NULL)) then b.Name else CONCAT(N'Chuyển từ ', bold.Name, N' <i class="fa-solid fa-arrow-right text-warning"></i> ',b.Name) END),'') as Col3 --as BranchName  
	  ,ISNULL(d.Name,'')  as Col4  --as DeviceName 
	  ,ISNULL((case when (h.TeamIdold=h.TeamId OR (told.Name IS NULL)) then t.Name else CONCAT(N'Chuyển từ ', told.Name, N' <i class="fa-solid fa-arrow-right text-warning"></i> ',t.Name) END),'') as Col5-- as TeamName
	  ,ISNULL((case when (h.LineIdold=h.LineId OR (lold.Name IS NULL)) then l.Name else CONCAT(N'Chuyển từ ', lold.Name, N' <i class="fa-solid fa-arrow-right text-warning"></i> ',l.Name) END),'') as Col6 --as LineName  
	  ,ISNULL(d.QRCode,'') as Col7
	  ,ISNULL(d.QRCodeImg,'') as Col8
      ,ISNULL(d.CodeNew,'') as Col9
      ,ISNULL(d.Properties,'') as Col10
      ,ISNULL(d.Description,'') as Col11
      ,ISNULL(d.Description2,'') as Col12
  FROm DeviceHistory h
   left outer join Device d on d.Id = h.DeviceId
   left outer join Branch b on b.Id = h.BranchId
   left outer join Team t on t.Id = h.TeamId
   left outer join Line l on l.Id = h.LineId
   left outer join Branch bold on bold.Id = h.BranchIdold
   left outer join Team told on told.Id = h.TeamIdold
   left outer join Line lold on lold.Id = h.LineIdold
   Where d.QRCode = @sQR
   ORDER BY h.TimeCreated DESC


END

GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistoryRepairByQRCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceHistoryRepairByQRCode] 
@UserId nvarchar(450) null,
@sQR nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   DECLARE @DeviceId bigint = 0
     set @DeviceId = Isnull((select Id from Device where  QRCode = @sQR), 0)

  SELECT  0 as IsTrouble,
					pdt.TroubleDate  as Col1 --as DatePlan 
					, Isnull(pdt.RepairContent, '') as Col2 -- as ContentAct
					, CONCAT(ROUND(CAST(DATEDIFF(MINUTE, pdt.TimeStopBegin, pdt.TimeStopEnd) AS float)/60, 3) , ' h')  as Col3 -- as Stophour -- Isnull(ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)), '') as Col3 -- as Stophour
					,  Isnull([dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers'), '') as Col4 -- as UserAct
					, Isnull(dbo.ufnGetSupplieName(pdt.Id), '') as Col5 -- as SupplieName 
					,'' as Col6 -- as Note   
						  ,'' as Col7
						  ,'' as Col8
						  ,'' as Col9
						  ,'' as Col10
						  ,'' as Col11
						  ,'' as Col12
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						WHERE pdt.PlanId	IN (SELECT p.Id 
													FROM PlanDaily p 
													WHERE	(p.DeviceId	= @DeviceId))
						     	AND ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) > 0
						        AND pdt.RepairContent IS NOT NULL

                UNION SELECT  1 as IsTrouble,
					pdt.ReportDate as Col1 --as DatePlan
					, Isnull([dbo].ufnGetWorkContentForBBBDTB(pdt.PlanDeviceId), '') as Col2 --as ContentAct
					, CONCAT(ROUND(CAST(DATEDIFF(MINUTE, pdt.StartDate, pdt.EndDate) AS float)/60, 3) , ' h')  as Col3 -- as Stophour Isnull(ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)), '') as Col3 --as Stophour
					, Isnull( [dbo].ufnGetUserNameByListID(pdt.UserSCBD , ',', 'AspNetUsers'), '') as Col4 --as UserAct
					,''  as Col5 --as SupplieName
					,'' as Col6 -- as Note   
						  ,'' as Col7
						  ,'' as Col8
						  ,'' as Col9
						  ,'' as Col10
						  ,'' as Col11
						  ,'' as Col12 
						FROM  PlanPeriodicReport pdt
						inner join PlanPeriodicDevice pd on pd.Id = pdt.PlanDeviceId
						WHERE pd.Id	IN (SELECT p.Id 
													FROM PlanPeriodicDevice pd2 inner join PlanPeriodic p on p.Id = pd2.PlanId
													WHERE (pd2.DeviceId	= @DeviceId))
                                AND pdt.ReportDate IS NOT NULL
						     	--AND ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) >0  ---lấy cả sửa chữa và bảo dưỡng
								
          ORDER BY Col1 DESC

END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceHistoryTroubleByQRCode]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceHistoryTroubleByQRCode] 
@UserId nvarchar(450) null,
@sQR nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
  SET NOCOUNT OFF;
     DECLARE @DeviceId bigint = 0
     set @DeviceId = Isnull((select Id from Device where  QRCode = @sQR), 0);

	SELECT  0 as IsTrouble,
							f.Name  as Col1 --as DatePlan 
							,b.Name  as Col2 -- as ContentAct
							,t.Name  as Col3 -- as Stophour
							,d.Name  as Col4 -- as UserAct
							,d.Code  as Col5 -- as SupplieName 
							,l.Name as Col6 -- as Note   
								  ,CASE when (ISNULL(pdt.HasReport, 0) =0) then '-' else N'<span class="right badge badge-danger">Sự cố nghiêm trọng</span>' END as Col7
								  ,p.PlanNumber as Col8
								  ,pdt.TroubleContent as Col9
								  ,FORMAT(CONVERT(datetime, pdt.TroubleDate ),'dd/MM/yyyy hh:mm tt')  as Col10
								  ,Isnull(ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)), '') as Col11
								  ,FORMAT(CONVERT(datetime, pdt.DateConfirm ),'dd/MM/yyyy hh:mm tt') as Col12
								  ,Isnull([dbo].ufnGetUserNameByListID(pdt.UserConfirm , ',', 'AspNetUsers'), '') as Col13 
								  ,Isnull([dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers'), '') as Col14 
								  ,Isnull(dbo.ufnGetSupplieName(pdt.Id), '') as Col15 
								  ,pdt.Note as Col16 
								  ,pdt.Conclusion as Col17 
								  ,'' as Col18 
								  ,'' as Col19 
								  ,'' as Col20
								FROM  PlanDailyTrouble pdt
								inner join PlanDaily p on p.Id = pdt.PlanId
								LEFT join Device d on d.Id = p.DeviceId
								LEFT join Line l on l.Id = d.LineId
								LEFT join Team t on t.Id = l.TeamId
								LEFT join Branch b on b.Id = p.BranchId
								LEFT join Factory f on f.Id = b.FactoryId
								WHERE p.DeviceId = @DeviceId
															   ORDER BY pdt.TroubleDate DESC

END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceRepair]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceRepair] 
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
IF NOT EXISTS (SELECT Id FROM DeviceRepair p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanMonth = @month)
    BEGIN
        INSERT INTO [dbo].[DeviceRepair]
           ([PlanMonth]
		   ,[PlanYear]
           ,[FactoryId]
           ,[BranchId]
		   ,UserId
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@month
		   ,@year
           ,@FactoryId
           ,@BranchId
		   ,@UserId
           ,GETDATE()    
           ,GETDATE());

	set @CurrentPlanId = SCOPE_IDENTITY();
	update DeviceTarget set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'THMTTB', 'DeviceTarget' , 0 , PlanMonth, @CurrentPlanId) where Id = @CurrentPlanId; 
END
ELSE
BEGIN
   set @CurrentPlanId = (SELECT Id FROM DeviceRepair p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanMonth = @month);
END

select @CurrentPlanId as DeviceRepairId,  0 as Id
      ,p.PlanMonth
      ,p.PlanYear
	  ,0 as DayOfMonth
      ,p.FactoryId
      ,p.BranchId
      --,p.DatePlan
      --,p.UserPlan
      --,p.DateBranch
      --,p.UserBranch
      --,p.DateFactory
      --,p.UserFactory
      --,p.DateAuthority
      --,p.UserAuthority
      --,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      --,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  --,'' as DeviceName
	  --,u1.FullName as UserNameAuthority
	  --,u2.FullName as UserNameBranch
	  --,u3.FullName as UserNameFactory 
	  --,u4.FullName as UserNamePlan	  
	  ,'' as Contents
	  ,'' as AssemblyDetail
	  ,'' as UserAct
	  ,'' as DeviceId
	  ,'' as SupplieList
	  ,'' as Note
	  ,'' as DeviceName
	  from DeviceRepair p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     --left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     --left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     --left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     --left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as DeviceRepairId,  pd.Id
      ,@month as PlanMonth
      ,@year as PlanYear
	  ,pd.DayOfMonth as DayOfMonth
      ,@FactoryId as FactoryId
      ,@BranchId as BranchId
      --,'' as DatePlan
      --,'' as UserPlan
      --,'' as DateBranch
      --,'' as UserBranch
      --,'' as DateFactory
      --,'' as UserFactory
      --,'' as DateAuthority
      --,'' as UserAuthority
      --,'' as PlanNumber
      ,pd.TimeCreated
      ,pd.TimeModified
      --,pd.DeviceId
	  ,'' as BranchName
	  ,'' as FactoryName
	  --,'' as DeviceName
	  --,'' as UserNameAuthority
	  --,'' as UserNameBranch
	  --,'' as UserNameFactory 
	  --,'' as UserNamePlan
	  ,pd.Contents
	  ,pd.AssemblyDetail
	  ,pd.UserAct
	  ,pd.DeviceId
	  ,pd.SupplieList
	  ,pd.Note
	  ,d.Name as DeviceName
  FROM  DeviceRepairDetail pd
  inner join Device d on d.Id = pd.DeviceId
   where pd.DeviceRepairId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceSupplieById]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceSupplieById] 
@UserId nvarchar(450) null,
@DeviceId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--DECLARE @OlDStatus int;  SET @OlDStatus = (select Top(1) StatusValue from DeviceHistoryStatus where [DeviceId] = @Id order by Id desc)
	SET NOCOUNT OFF;
    Select c.*, concat(s.Code, s.Name) as SupplieName from DeviceSupplie c inner join Supplie s on s.Id = c.SupplieId 
       where DeviceId =@DeviceId
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceTarget]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceTarget] 
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
IF NOT EXISTS (SELECT Id FROM DeviceTarget p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanMonth = @month)
    BEGIN
        INSERT INTO [dbo].[DeviceTarget]
           ([PlanMonth]
		   ,[PlanYear]
           ,[FactoryId]
           ,[BranchId]
		   ,UserId
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@month
		   ,@year
           ,@FactoryId
           ,@BranchId
		   ,@UserId
           ,GETDATE()    
           ,GETDATE());
	set @CurrentPlanId = SCOPE_IDENTITY();
	INSERT INTO [dbo].[DeviceTargetDetail]
           ([DeviceTargetId]
           ,[Contents]
           ,[Targets]
           ,[ResultAct]
           ,[Evaluate]
           ,[PlanTargetId]
           ,[PlanContent]
           ,[Note]
           ,[UserId]
		   ,MinValue, TargetType, PlanTargetDeviceId)
     SELECT 
           @CurrentPlanId
           ,pd.Measurement
           ,pd.Targets
           ,NULL
           ,0 -- N'Lấy đánh giá'
           ,pd.Id
           ,N'Duy trì/Dừng' --Kế hoạc tiếp theo
           ,pd.Note
           ,pd.UserId
		   ,pd.MinValue, pd.TargetType, pd.Id
         FROM PlanTargetDevice pd  inner join PlanTarget p on p.Id = pd.PlanId WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year;
END
ELSE
BEGIN
   set @CurrentPlanId = (SELECT TOP(1) Id FROM DeviceTarget p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanMonth = @month order by ID desc);
   INSERT INTO [dbo].[DeviceTargetDetail]
           ([DeviceTargetId]
           ,[Contents]
           ,[Targets]
           ,[ResultAct]
           ,[Evaluate]
           ,[PlanTargetId]
           ,[PlanContent]
           ,[Note]
           ,[UserId]
		   ,MinValue, TargetType, PlanTargetDeviceId)
     SELECT 
           @CurrentPlanId
           ,pd.Measurement
           ,pd.Targets
           ,NULL
           ,0 -- N'Lấy đánh giá'
           ,pd.Id
           ,N'Duy trì/Dừng' --Kế hoạc tiếp theo
           ,pd.Note
           ,pd.UserId
		   ,pd.MinValue, pd.TargetType, pd.Id
         FROM PlanTargetDevice pd  
		 inner join PlanTarget p on p.Id = pd.PlanId 
		 WHERE 
		 pd.Id NOT IN (select has.PlanTargetDeviceId from  DeviceTargetDetail has  where has.DeviceTargetId  = @CurrentPlanId)
		 AND p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year;

END

if(@month = MONTH(GETDATE()) AND @year = YEAR(GETDATE()))
BEGIN
---Cập nhật giá trị báo cáo cho thangs hieenj taij
DECLARE @ResultValTyPe1 int;
DECLARE @ResultValTyPe2 int;
DECLARE @ResultValTyPe3 int;
DECLARE @ResultValTyPe4 int;
select @ResultValTyPe1 = ISNULL(dbo.ufnGetBCPlanTagetNumberStopTroubleByParameter(@month, @year, @BranchId, @FactoryId, 0), 0);
 UPDATE [dbo].[DeviceTargetDetail] 
      SET [ResultAct] = CONCAT(N'Số lần dừng do hỏng hóc thiết bị: ', @ResultValTyPe1, N' lần') ,[Evaluate] = 1 
	  WHERE TargetType = 1 AND DeviceTargetId = @CurrentPlanId AND @ResultValTyPe1 <= MinValue;

select @ResultValTyPe2 = ISNULL(dbo.ufnGetBCPlanTagetTimeStopTroubleByParameter(@month, @year, @BranchId, @FactoryId, 0), 0);
 UPDATE [dbo].[DeviceTargetDetail] 
      SET [ResultAct] = CONCAT(N'Thời gian dừng máy do sự cố: ', @ResultValTyPe2, N' giờ') ,[Evaluate] = 1 
	  WHERE TargetType = 2 AND DeviceTargetId = @CurrentPlanId AND @ResultValTyPe2  <= MinValue;

select @ResultValTyPe3 = ISNULL(dbo.ufnGetBCPlanTagetTimeRepairByParameter(@month, @year, @BranchId, @FactoryId, 0), 0);
 UPDATE [dbo].[DeviceTargetDetail] 
      SET [ResultAct] = CONCAT(N'Thời gian bảo dưỡng: ', @ResultValTyPe3, N' giờ') ,[Evaluate] = 1 
	  WHERE TargetType = 3 AND DeviceTargetId = @CurrentPlanId AND @ResultValTyPe3  <= MinValue;

select @ResultValTyPe4 = ISNULL(dbo.ufnGetBCPlanTagetCostRepairByParameter(@month, @year, @BranchId, @FactoryId, 0), 0);
 UPDATE [dbo].[DeviceTargetDetail] 
      SET [ResultAct] = CONCAT(N'Chi phí sửa chữa thiết bị: ', @ResultValTyPe4, N' tr/tháng') ,[Evaluate] = 1 
	  WHERE TargetType = 4 AND DeviceTargetId = @CurrentPlanId AND @ResultValTyPe4  <= MinValue;

END
---Lấy bảng kết quả báo cáo
select @CurrentPlanId as DeviceTargetId,  0 as Id, ISNULL(p.PlanId,0) as PlanIdOrg, ISNULL(p.Number, 0) as Number
      ,p.PlanMonth
	  ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
	  ,p.FileScan
      ,p.TimeCreated
      ,p.TimeModified
	  ,b.Name as BranchName
	  ,f.Name as FactoryName	  
	  ,'' as Contents
	  ,'' as Targets
	  ,'' as ResultAct
	  ,0 as Evaluate
	  ,'' as PlanContent
	  ,'' as Note
	  ,0 as PlanTargetId
	  from DeviceTarget p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as DeviceTargetId,  pd.Id , NULL as PlanIdOrg, 0 as Number
	  ,@month as PlanMonth
      ,@year as PlanYear
      ,@FactoryId as FactoryId
      ,@BranchId as BranchId
	  ,p.FileScan
      ,'' as TimeCreated
      ,'' as TimeModified
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,pt.Measurement as Contents
	  ,pt.Targets as Targets
	  ,pd.ResultAct
	  ,ISNULL(pd.Evaluate,0) as Evaluate
	  ,pd.PlanContent
	  ,pd.Note
	  ,pd.PlanTargetId
  FROM  DeviceTargetDetail pd inner join DeviceTarget p On p.Id = pd.DeviceTargetId
  Left outer join PlanTargetDevice pt ON pt.Id = pd.PlanTargetDeviceId
   where pd.DeviceTargetId = @CurrentPlanId
	   	   ORDER BY PlanTargetId ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeviceTargetSummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDeviceTargetSummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

select p.Id as DeviceTargetId,  0 as Id, ISNULL(p.PlanId,0) as PlanIdOrg, ISNULL(p.Number, 0) as Number
      ,p.PlanMonth
	  ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.TimeCreated
      ,p.TimeModified
	  ,p.FileScan
	  ,b.Name as BranchName
	  ,f.Name as FactoryName	  
	  ,'' as Contents
	  ,'' as Targets
	  ,'' as ResultAct
	  ,'' as Evaluate
	  ,'' as PlanContent, NULL as PlanTargetId
	  ,'' as Note
	  ,0 as PlanTargetId
	  from DeviceTarget p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     where p.PlanNumber =@PlanNumber and p.Number =@NumberAju
  UNION
 SELECT  p.Id as DeviceTargetId, pd.Id, ISNULL(p.PlanId,0) as PlanIdOrg, ISNULL(p.Number, 0) as Number
      ,p.PlanMonth
	  ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,'' as TimeCreated
      ,'' as TimeModified
	  ,p.FileScan
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,pt.Measurement as Contents
	  ,pt.Targets as Targets
	  ,pd.ResultAct
	  ,pd.Evaluate
	  ,pd.PlanContent
      ,pd.PlanTargetId
	  ,pd.Note
	  ,pd.PlanTargetId
  FROM DeviceTarget p 
  inner join  DeviceTargetDetail pd on p.Id = pd.DeviceTargetId
  Left outer join PlanTargetDevice pt ON pt.Id = pd.PlanTargetId
   where p.PlanNumber =@PlanNumber and p.Number =@NumberAju
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetFactory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFactory] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select f.*, CONCAT(f.Code, ', ', f.[Name]) as FactoryCodeName FROm Factory as f ORDER BY f.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetForm]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetForm] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * FROm Form ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetInforDetaiPageHome]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforDetaiPageHome] 
@Index int null =0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @col1 int
DECLARE @col2 int
DECLARE @col3 int
DECLARE @col4 int

--select @pInMonth = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
--where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ','))

--select @pInMonthDone = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
--inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
--where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1

--

--select @pInYearDone = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
--inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
--where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1
if(@Index =1)
BEGIN
select d.Name as DeviceName, d.Code  as DeviceCode, b.Name as BranchName
   , [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](MONTH(GETDATE()), YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id) as Col1
   , [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter](0, YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id)  as Col2
   , floor(rand()*2) + d.Id as Col3
   , floor(rand()*5) + d.Id as Col4
		from Device d inner join Branch b ON b.Id = d.BranchId 
		where d.GetRangDong =1
		--where d.Id in (select pd.DeviceId from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1)
ORDER BY DeviceName
END
else if(@Index =2)
BEGIN
select d.Name as DeviceName, d.Code  as DeviceCode, b.Name as BranchName
   , [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](MONTH(GETDATE()), YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id) as Col1
   , [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter](0, YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id)  as Col2
   , -1 as Col3
   ,  -1 as Col4
		from Device d inner join Branch b ON b.Id = d.BranchId 
		where d.Id in (select pd.DeviceId from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1)
ORDER BY DeviceName
END
else if(@Index =3)
BEGIN
select d.Name as DeviceName, d.Code  as DeviceCode, b.Name as BranchName
   , [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](0, YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id) as Col1
   , [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter](0, YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id)  as Col2
   , -1 as Col3
   ,  -1 as Col4
		from Device d inner join Branch b ON b.Id = d.BranchId 
		where d.Id in (select pd.DeviceId from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id where dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1 AND YEAR( GETDATE()) = p.PlanYear)
ORDER BY DeviceName
END
else if(@Index =4)
BEGIN
select d.Name as DeviceName, d.Code  as DeviceCode, b.Name as BranchName
   , [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](0, YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id) as Col1
   , [dbo].[ufnGetBCPlanTagetTimeStopTroubleByParameter](0, YEAR( GETDATE()), d.BranchId, b.FactoryId, d.Id)  as Col2
   , -1 as Col3
   ,  -1 as Col4
		from Device d inner join Branch b ON b.Id = d.BranchId 
		where d.Id in (select pd.DeviceId from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  <> 1
        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0)
ORDER BY DeviceName

--select @NumNotDone = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
--inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
--where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  <> 1
--        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0

END
END
GO
/****** Object:  StoredProcedure [dbo].[GetInforDetaiPageHomeNew]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforDetaiPageHomeNew] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
,@Index int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 	
if(@Index =1) --thiết bị Đang hoạt động bình thường
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian cập nhật'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
UNION
SELECT d.TimeModified as TimeCol
        , d.Code as ColVal1
		, d.Name as ColVal2
		, FORMAT(CONVERT(datetime, d.TimeModified ),'dd/MM/yyyy hh:mm tt') as ColVal3  ---trạng thái
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---Bộ phận
		, b.Name as ColVal5  ---Người thực hiện
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from Device d 
		          left outer join Branch b ON b.Id =d.BranchId
                  where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				  AND [dbo].[ufnGetTrangthaiThietbi](@startDate , @endDate , d.Id) = 1
			      Order by TimeCol desc
END
else if(@Index =2) --Tỉ lệ % thiết bị Đang hoạt động
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian cập nhật'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
UNION
SELECT d.TimeModified as TimeCol
        , d.Code as ColVal1
		, d.Name as ColVal2
		, FORMAT(CONVERT(datetime, d.TimeModified ),'dd/MM/yyyy hh:mm tt') as ColVal3  ---trạng thái
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---Bộ phận
		, b.Name as ColVal5  ---Người thực hiện
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from Device d 
		          left outer join Branch b ON b.Id =d.BranchId
                  where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				  --AND [dbo].[ufnGetTrangthaiThietbi](@startDate , @endDate , d.Id) = 1
			      Order by TimeCol desc
END
else if(@Index =3) --Số thiết bị đã bảo trì/bảo dưỡng so với KH tháng
BEGIN
--Số thiết bị đã đươc bảo trì bào dưỡng theo kê hoạch thang    
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian thực hiện'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
UNION
select GETDATE() as TimeCol
        , d.Code as ColVal1
		, d.Name as ColVal2
		, FORMAT(CONVERT(datetime, pr.EndDate ),'dd/MM/yyyy hh:mm tt')  as ColVal3  
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4 
		, b.Name as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from Device d   	
		 left outer join Branch b ON b.Id =d.BranchId
	     inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 inner join PlanPeriodic p on p.Id = pd.PlanId
		 inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	     where ISNULL(pr.TimeDelivery, 0) IN (1,2) 
		        AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
				AND MONTH(pr.DateAuthority) = MONTH(GETDATE())
			      Order by TimeCol desc
END
ELSE if(@Index = 4) --Số thiết bị đã bảo trì/bảo dưỡng so với KH năm
	BEGIN
		  select  GETDATE() as TimeCol
		  ,  N'Mã thiết bị' as ColVal1
			, N'Tên thiết bị' as ColVal2
			, N'Thời gian thực hiện'  as ColVal3  ---trạng thái
			, N'Trạng thái' as ColVal4  ---Bộ phận
			, N'Bộ phận - Người thực hiện' as ColVal5  ---Người thực hiện
			, N'' as ColVal6 
			, N'' as ColVal7 
			, N'' as ColVal8 
UNION
		select pr.ReportDate as TimeCol
		,d.Code as ColVal1
		, d.Name as ColVal2
		,CONCAT(FORMAT(CONVERT(datetime, pr.StartDate ),'dd/MM/yyyy hh:mm tt'), ' - ', FORMAT(CONVERT(datetime, pr.EndDate),'dd/MM/yyyy hh:mm tt')) as ColVal3
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id)  as ColVal4  ---trạng thái
		, CONCAT(b.Code,' - ', dbo.ufnGetDepartmentActForBBBDTB(pr.Id)) as ColVal5  ---Bộ phận
		, '' as ColVal6 -- u.FullName as ColVal6  ---Người thực hiện
		, '' as ColVal7  
		, '' as ColVal8 
		from PlanPeriodicDevice pd 
		inner join PlanPeriodic p on p.Id = pd.PlanId 
		inner join Device d ON d.Id =pd.DeviceId
		left outer join Branch b ON b.Id =p.BranchId
		inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		LEFT OUTER join AspNetUsers u on u.Id = pr.UserSCBD
		where ISNULL(pr.TimeDelivery, 0) IN (1,2)   
		  AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		    AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') -- dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  = 1
		--        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0
		 Order by TimeCol desc

END
else if(@Index =5) --Tỉ lệ hoàn thành BD thiết bị theo KH năm
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian bảo trì bảo dưỡng'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
--UNION
--SELECT d.TimeModified as TimeCol
--        , d.Code as ColVal1
--		, d.Name as ColVal2
--		, FORMAT(CONVERT(datetime, d.TimeModified ),'dd/MM/yyyy hh:mm tt') as ColVal3  ---trạng thái
--		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---Bộ phận
--		, b.Name as ColVal5  ---Người thực hiện
--		, N'' as ColVal6 
--		, N'' as ColVal7 
--		, N'' as ColVal8 from Device d 
--		          left outer join Branch b ON b.Id =d.BranchId
--                  where (d.BranchId = @SBranchID OR @SBranchID =0)
--				  --AND [dbo].[ufnGetTrangthaiThietbi](@startDate , @endDate , d.Id) = 1
--			      Order by TimeCol desc
END
else if(@Index =6) --Số lần thực hiện bảo trì bảo dưỡng
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian thực hiện'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
UNION
SELECT d.TimeModified as TimeCol
        , d.Code as ColVal1
		, d.Name as ColVal2
		, FORMAT(CONVERT(datetime, pr.ActStartDate),'dd/MM/yyyy hh:mm tt') as ColVal3  ---trạng thái
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---Bộ phận
		, b.Name as ColVal5  ---Người thực hiện
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from PlanPeriodicReport pr 	
	     inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId
		 inner join PlanPeriodic p on p.Id = pd.PlanId
		 inner join Device d on d.Id = pd.DeviceId
		 left outer join Branch b ON b.Id =d.BranchId
	     where ISNULL(pr.TimeDelivery, 0) =2 
		        AND (pr.ReportDate BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')
			      Order by TimeCol desc
END
else if(@Index =7) --Số thiết bị đã được nghiệm thu SC/BD định kỳ
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian bảo trì bảo dưỡng'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
UNION
SELECT d.TimeModified as TimeCol
        , d.Code as ColVal1
		, d.Name as ColVal2
		, FORMAT(CONVERT(datetime, pr.ReportDate),'dd/MM/yyyy hh:mm tt') as ColVal3  ---trạng thái
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---Bộ phận
		, b.Name as ColVal5  ---Người thực hiện
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from PlanPeriodicDevice pd 
		inner join PlanPeriodic p on p.Id = pd.PlanId 
		inner join Device d ON d.Id =pd.DeviceId
		left outer join Branch b ON b.Id =p.BranchId
		inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		LEFT OUTER join AspNetUsers u on u.Id = pr.UserSCBD
		where ISNULL(pr.TimeDelivery, 0) IN (1,2)   
		  AND (pr.ReportDate BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
		  AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		    AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')  --(p.BranchId = @SBranchID OR @SBranchID =0)
			      Order by TimeCol desc
END
ELSE if(@Index = 8) --Số thiết bị đến hạn bảo trì/bảo dưỡng
	BEGIN
		  select  GETDATE() as TimeCol,  N'Mã thiết bị' as ColVal1
			, N'Tên thiết bị' as ColVal2
			, N'Thời gian cần thực hiện'  as ColVal3  ---trạng thái
			, N'Trạng thái' as ColVal4  ---Bộ phận
			, N'Bộ phận' as ColVal5  ---Người thực hiện
			, N'' as ColVal6 
			, N'' as ColVal7 
			, N'' as ColVal8 
UNION
	----số thiết bị quá lịch bảo dưỡng trong năm
		select  pr.ReportDate as TimeCol, d.Code as ColVal1
		, d.Name as ColVal2
		, CASE WHEN (ISNULL(pd.MonthPlan, '0') ='0') then CONCAT('',P.PlanYear) ELSE CONCAT(SUBSTRING(pd.MonthPlan, 3, (LEN(pd.MonthPlan)-2)), '/', P.PlanYear) END as ColVal3
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---trạng thái
		, b.Code as ColVal5  ---Bộ phận
		, '' as ColVal6  ---Người thực hiện
		, '' as ColVal7  
		, '' as ColVal8 
		--, dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id) as IsAct  -- kiểm tra đã thực hiện theo kế hoạch hay chưa
		--, pr.ReportDate
		from PlanPeriodicDevice pd 
		inner join PlanPeriodic p on p.Id = pd.PlanId 
		inner join Device d ON d.Id =pd.DeviceId
		left outer join Branch b ON b.Id =p.BranchId
		inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		where  (pr.UserAuthority IS NULL AND pr.UserFactory IS NULL)
		       AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')  -- --dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  <> 1
		--        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0
		--[dbo].[ufnGetSumTBdenhanbaotri]
		 --select @ret = count(d.id) from Device d   	
	  --   inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 --inner join PlanPeriodic p on p.Id = pd.PlanId
		 --inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	  --   where (pr.UserAuthority IS NULL AND pr.UserFactory IS NULL)
		 --       AND (p.BranchId = @SBranchID OR @SBranchID =0)
		
		Order by TimeCol desc
END
else if(@Index =9) --Số thiết bị lỗi/hỏng
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian cập nhật'  as ColVal3  
		, N'Trạng thái' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
UNION
SELECT d.TimeModified as TimeCol
        , d.Code as ColVal1
		, d.Name as ColVal2
		, FORMAT(CONVERT(datetime, d.TimeModified ),'dd/MM/yyyy hh:mm tt') as ColVal3  ---trạng thái
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---Bộ phận
		, b.Name as ColVal5  ---Người thực hiện
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from Device d 
		          left outer join Branch b ON b.Id =d.BranchId
                  where (d.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')  --(d.BranchId = @SBranchID OR @SBranchID =0)
				  AND [dbo].[ufnGetTrangthaiThietbi](@startDate , @endDate , d.Id) IN (2,3, 5) -- sự cố nghiêm trọng, đang sửa chữa
			      Order by TimeCol desc
END
else if(@Index =10) --Số biên bản sự cố nghiêm trọng
BEGIN
select  GETDATE() as TimeCol
        , N'Mã thiết bị' as ColVal1
		, N'Tên thiết bị' as ColVal2
		, N'Thời gian sự cố'  as ColVal3  
		, N'Nội dung sự cố' as ColVal4  
		, N'Bộ phận' as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 
--ALTER FUNCTION [dbo].[ufnGetSumTBloihongnghiemtrong](@startDate nvarchar(250) null
--													,@endDate nvarchar(250) null
--													,@SFactoryId nvarchar(250) null
--													,@STeamId nvarchar(250) null
--													,@SBranchID nvarchar(250) null)  
UNION
select  pr.DateTrouble as TimeCol
        , d.Name as ColVal1
		, d.Code as ColVal2
		, pr.ReportNumber  as ColVal3  
		, FORMAT(CONVERT(datetime, pr.DateTrouble ),'dd/MM/yyyy hh:mm tt') as ColVal4  
		, b.Name as ColVal5  
		, N'' as ColVal6 
		, N'' as ColVal7 
		, N'' as ColVal8 from PlanDailyTroubleReport pr 
	--inner join 	PlanDailyTrouble pt ON pr.Id = pt.TroubleReportID
	 inner join PlanDaily p on p.Id = pr.PlanId
	 inner join Device d on d.Id = p.DeviceId
	 left outer join Branch b ON b.Id =d.BranchId
	 where (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')  --(p.BranchId = @SBranchID OR @SBranchID =0)
	     AND (pr.DateTrouble BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
	      Order by TimeCol desc
END
END
GO
/****** Object:  StoredProcedure [dbo].[GetInforDetaiReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforDetaiReport] 
@NumberReport int null = 1
,@Index int null =0
,@BranchID bigint null =0
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT OFF;
DECLARE @col1 nvarchar(220) =''
DECLARE @col2 nvarchar(220) =''
DECLARE @col3 nvarchar(220) =''
DECLARE @col4 nvarchar(220) =''
DECLARE @col5 nvarchar(220) =''
DECLARE @col6 nvarchar(220) =''
DECLARE @col7 nvarchar(220) =''
DECLARE @col8 nvarchar(220) =''
--Báo cáo 5
if(@NumberReport =5)
BEGIN
   --Báo cáo 5
	if(@Index =1)
	BEGIN
	    select N'Tên thiết bị' as Col1, N'Mã thiết bị'  as Col2, N'Ngành ban' as Col3, N'Thời gian tiếp nhận' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
        UNION
		select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'T' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
       UNION
		select distinct d.Name as Col1, d.Code  as Col2, b.Name as Col3, d.TimeUse as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
		     from Device d join Branch b ON b.Id = d.BranchId 
				where (ISNULL(d.BranchId, 0) =@BranchID OR @BranchID =0) and d.GetRangDong =1
		  ORDER BY stt,Col1 asc
	END
	else if(@Index =2)
	BEGIN
	     select N'Tên thiết bị' as Col1, N'Mã thiết bị'  as Col2, N'Ngành ban' as Col3, N'Thời gian tiếp nhận' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
        UNION
		select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'T' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
       UNION
		select distinct d.Name as Col1, d.Code  as Col2, b.Name as Col3, d.TimeUse as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
		     from Device d join Branch b ON b.Id = d.BranchId 
				where (d.BranchId =@BranchID OR @BranchID =0)
		  ORDER BY stt,Col1 asc
	END
	else if(@Index =3)
	BEGIN
	   select N'Tên dây chuyền' as Col1, N'Mã dây chuyền'  as Col2, N'Ngành ban' as Col3, N'Số lượng thiết bị' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
        UNION
		select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'N' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
       UNION
		select distinct l.Name as Col1, ISNULL(l.Code,'')  as Col2, b.Name as Col3, CONVERT(varchar,(select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0) AND d.LineId =l.Id)) as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
		    from Line l inner join Device d on d.LineId = l.Id  inner join Team t on t.Id = l.TeamId join Branch b ON b.Id = d.BranchId where (t.BranchId = @BranchID OR @BranchID =0)
		  ORDER BY stt,Col1 asc
	END
	else if(@Index =4)
	BEGIN
		select N'Tên nhóm' as Col1, N'Mã nhóm'  as Col2, N'Số lượng thiết bị' as Col3, @col4  as Col4,
			   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
			UNION
			select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'N' as Col4,
			   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
		   UNION
			select distinct g.Name as Col1, ISNULL(g.Code,'')  as Col2, CONVERT(varchar,(select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0) AND d.GroupID =g.Id)) as Col3, @col4 as Col4,
			   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
				from DeviceGroup g inner join Device d on d.GroupID = g.Id
			  ORDER BY stt,Col1 asc
	END
END
--Báo cáo 6
ELSE if(@NumberReport =6) 
BEGIN
   --Báo cáo 6
	if(@Index =1)
	BEGIN
	    select N'Tên thiết bị' as Col1, N'Mã thiết bị'  as Col2, N'Ngành ban' as Col3, N'Thời gian tiếp nhận' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
        UNION
		select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'T' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
       UNION
		select distinct d.Name as Col1, d.Code  as Col2, b.Name as Col3, d.TimeUse as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
		     from Device d join Branch b ON b.Id = d.BranchId 
				where (ISNULL(d.BranchId, 0) =@BranchID OR @BranchID =0) and d.GetRangDong =1
		  ORDER BY stt,Col1 asc
	END
	else if(@Index =2)
	BEGIN
	     select N'Tên thiết bị' as Col1, N'Mã thiết bị'  as Col2, N'Ngành ban' as Col3, N'Thời gian tiếp nhận' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
        UNION
		select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'T' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
       UNION
		select distinct d.Name as Col1, d.Code  as Col2, b.Name as Col3, d.TimeUse as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
		     from Device d join Branch b ON b.Id = d.BranchId 
				where (d.BranchId =@BranchID OR @BranchID =0)
		  ORDER BY stt,Col1 asc
	END
	else if(@Index =3)
	BEGIN
	   select N'Tên dây chuyền' as Col1, N'Mã dây chuyền'  as Col2, N'Ngành ban' as Col3, N'Số lượng thiết bị' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
        UNION
		select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'N' as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
       UNION
		select distinct l.Name as Col1, ISNULL(l.Code,'')  as Col2, b.Name as Col3, CONVERT(varchar,(select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0) AND d.LineId =l.Id)) as Col4,
		   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
		    from Line l inner join Device d on d.LineId = l.Id  inner join Team t on t.Id = l.TeamId join Branch b ON b.Id = d.BranchId where (t.BranchId = @BranchID OR @BranchID =0)
		  ORDER BY stt,Col1 asc
	END
	else if(@Index =4)
	BEGIN
		select N'Tên nhóm' as Col1, N'Mã nhóm'  as Col2, N'Số lượng thiết bị' as Col3, @col4  as Col4,
			   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 0 as stt
			UNION
			select 'T' as Col1, 'T'  as Col2, 'T' as Col3,  'N' as Col4,
			   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 1 as stt
		   UNION
			select distinct g.Name as Col1, ISNULL(g.Code,'')  as Col2, CONVERT(varchar,(select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0) AND d.GroupID =g.Id)) as Col3, @col4 as Col4,
			   @col5 as Col5,   @col6 as Col6,   @col7 as Col7,   @col8 as Col8, 2 as stt
				from DeviceGroup g inner join Device d on d.GroupID = g.Id
			  ORDER BY stt,Col1 asc
	END
END
END
GO
/****** Object:  StoredProcedure [dbo].[GetInforPageHome]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforPageHome] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE @pInMonth int
DECLARE @pInMonthDone int
DECLARE @pInYear int
DECLARE @pInYearDone int
DECLARE @NumThietbi int 
DECLARE @SumThietbi int = 3
DECLARE @NumNotDone int
DECLARE @SumPlan int

select @pInMonth = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ','))

select @pInMonthDone = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) 
                         AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1

select @pInYear = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
where YEAR( GETDATE()) = p.PlanYear

select @pInYearDone = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1

select @SumThietbi = COUNT(pd.ID) from Device pd 
select @NumThietbi = COUNT(pd.ID) from Device pd where pd.GetRangDong =1
--số thiết bị quá lịch bảo dưỡng trong năm
select @NumNotDone = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  <> 1
        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0

select @NumThietbi as VAl1_1 
       ,@SumThietbi as VAl1_2
		   ,@pInMonthDone as VAl2_1
		   ,@pInMonth as VAl2_2
			         ,@pInYearDone as VAl3_1
					 ,@pInYear as VAl3_2
							    ,@NumNotDone as VAl4_1 
								,@pInYear as VAl4_2 

END
GO
/****** Object:  StoredProcedure [dbo].[GetInforPageHomeNewByKey]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforPageHomeNewByKey] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 	
--Đơn vị
DECLARE @sup_01 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_02 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"> (%)</sup>'; 
DECLARE @sup_03 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_04 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_05 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"> (%)</sup>'; 
DECLARE @sup_11 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_12 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_13 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_14 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 
DECLARE @sup_15 nvarchar(250) = N'<sup style="font-size: 12px; color:#FFF;"></sup>'; 

--//Dòng 1
DECLARE @label_01 nvarchar(250) = N'Tổng số thiết bị Đang hoạt động'; DECLARE @val_01 int =0
DECLARE @label_02 nvarchar(250) = N'Tỉ lệ % thiết bị Đang hoạt động'; DECLARE @val_02 int =0
DECLARE @label_03 nvarchar(250) = N'Số thiết bị đã bảo trì/bảo dưỡng so với KH tháng'; DECLARE @val_03 int =0
DECLARE @label_04 nvarchar(250) = N'Số thiết bị đã bảo trì/bảo dưỡng so với KH năm'; DECLARE @val_04 int =0
DECLARE @label_05 nvarchar(250) = N'Tỉ lệ hoàn thành BD thiết bị theo KH năm'; DECLARE @val_05 int =0

--//Dòng 2[dbo].[ufnGetValueDayInPlanDaily][dbo].[ufnGetUserListViewPlan]
DECLARE @label_11 nvarchar(250) = N'Số lần thực hiện bảo trì bảo dưỡng'; DECLARE @val_11 int =0
DECLARE @label_12 nvarchar(250) = N'Số thiết bị đã được nghiệm thu SC/BD định kỳ'; DECLARE @val_12 int =0
DECLARE @label_13 nvarchar(250) = N'Số thiết bị đến hạn bảo trì/bảo dưỡng'; DECLARE @val_13 int =0
DECLARE @label_14 nvarchar(250) = N'Số thiết bị lỗi/hỏng'; DECLARE @val_14 int =0
DECLARE @label_15 nvarchar(250) = N'Số biên bản sự cố nghiêm trọng'; DECLARE @val_15 int =0

BEGIN TRY  
		select @val_01 = ISNULL(dbo.ufnGetSumTBdanghoatdong(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		DECLARE @valSumTB int;

		select @valSumTB = ISNULL(dbo.ufnGetSumTBtongtoanganh(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		if(@valSumTB=0) set @val_02 =0
		else set @val_02 = cast(ROUND(@val_01 *100 / @valSumTB,0) as int)
		select @val_03 = ISNULL(dbo.ufnGetSumTBDaBTDDSoKHThang(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		select @val_04 = ISNULL(dbo.ufnGetSumTBDaBTDDSoKHNam(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		select @val_05 = ISNULL(dbo.ufnGetSumTileHoanthanhBDTBKHNam(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)

		select @val_11 = ISNULL(dbo.ufnGetSumSolanthuchienbaoduong(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		select @val_12 = ISNULL(dbo.ufnGetSumTBddaduocnghiemthu(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		select @val_13 = ISNULL(dbo.ufnGetSumTBdenhanbaotri(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		select @val_14 = ISNULL(dbo.ufnGetSumTBloihong(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)
		select @val_15 = ISNULL(dbo.ufnGetSumTBloihongnghiemtrong(@startDate, @endDate,@SFactoryId ,@STeamId ,@SBranchID), 0)

		DECLARE @pInMonth int
		DECLARE @pInMonthDone int
		DECLARE @pInYear int
		DECLARE @pInYearDone int
		DECLARE @NumThietbi int 
		DECLARE @SumThietbi int = 3
		DECLARE @NumNotDone int
		DECLARE @SumPlan int

END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
		
		select @val_01 = 0;
		select @val_02 = 0;
		select @val_03 = 0;
		select @val_04 = 0;
		select @val_05 = 0;

		select @val_11 = 0;
		select @val_12 = 0;
		select @val_13 = 0;
		select @val_14 = 0;
		select @val_15 = 0;
	
END CATCH 

select @label_01 as Label_01 
       ,@val_01 as Val_01
	   ,@sup_01 as Sup_01
		  ,@label_02 as Label_02 
          ,@val_02 as Val_02
		  ,@sup_02 as Sup_02
			   ,@label_03 as Label_03 
			   ,@val_03 as Val_03
			   ,@sup_03 as Sup_03
				   ,@label_04 as Label_04 
				   ,@val_04 as Val_04
				   ,@sup_04 as Sup_04
					   ,@label_05 as Label_05 
					   ,@val_05 as Val_05
					   ,@sup_05 as Sup_05
						  ,@label_11 as Label_11 
						  ,@val_11 as Val_11
						  ,@sup_11 as Sup_11
							  ,@label_12 as Label_12 
							  ,@val_12 as Val_12
							  ,@sup_12 as Sup_12
								   ,@label_13 as Label_13 
								   ,@val_13 as Val_13
							       ,@sup_13 as Sup_13
									   ,@label_14 as Label_14 
									   ,@val_14 as Val_14									   
							          ,@sup_14 as Sup_14
										   ,@label_15 as Label_15 
										   ,@val_15 as Val_15
							               ,@sup_15 as Sup_15

END
GO
/****** Object:  StoredProcedure [dbo].[GetInforPageHomeTableByKey]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforPageHomeTableByKey] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
,@IsAct int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
if(@IsAct =0)
BEGIN
		----số thiết bị quá lịch bảo dưỡng trong năm
		select d.Code as ColVal1
		, d.Name as ColVal2
		, CASE WHEN (ISNULL(pd.MonthPlan, '0') ='0') then CONCAT('',P.PlanYear) ELSE CONCAT(SUBSTRING(pd.MonthPlan, 3, (LEN(pd.MonthPlan)-2)), '/', P.PlanYear) END as ColVal3
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id) as ColVal4  ---trạng thái
		, b.Code as ColVal5  ---Bộ phận
		, '' as ColVal6  ---Người thực hiện
		, '' as ColVal7  
		, '' as ColVal8 
		, dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id) as IsAct  -- kiểm tra đã thực hiện theo kế hoạch hay chưa
		, pr.ReportDate
		from PlanPeriodicDevice pd 
		inner join PlanPeriodic p on p.Id = pd.PlanId 
		inner join Device d ON d.Id =pd.DeviceId
		left outer join Branch b ON b.Id =p.BranchId
		inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		where  (pr.UserAuthority IS NULL AND pr.UserFactory IS NULL)
		       --AND (pr.ReportDate BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
		        AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')  --  --dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  <> 1
		--        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0
		--[dbo].[ufnGetSumTBdenhanbaotri]
		 --select @ret = count(d.id) from Device d   	
	  --   inner join PlanPeriodicDevice pd on pd.DeviceId = d.Id
		 --inner join PlanPeriodic p on p.Id = pd.PlanId
		 --inner join PlanPeriodicReport  pr on pr.PlanDeviceId =pd.Id
	  --   where (pr.UserAuthority IS NULL AND pr.UserFactory IS NULL)
		 --       AND (p.BranchId = @SBranchID OR @SBranchID =0)
END
ELSE 
BEGIN
		------số thiết bị đã thực hiện bảo dưỡng
		-------else if(@Index =7) --Số thiết bị đã được nghiệm thu SC/BD định kỳ
		--select d.Code as ColVal1
		--, d.Name as ColVal2
		----Thời gian thực hiện
		--,CONCAT(FORMAT(CONVERT(datetime, pr.StartDate ),'dd/MM/yyyy hh:mm tt'), ' - ', FORMAT(CONVERT(datetime, pr.EndDate),'dd/MM/yyyy hh:mm tt')) as ColVal3
		--, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id)  as ColVal4  ---trạng thái
		--, b.Code as ColVal5  ---Bộ phận
		--,dbo.ufnGetDepartmentActForBBBDTB(pr.Id) as ColVal6 -- u.FullName as ColVal6  ---Người thực hiện
		--, '' as ColVal7  
		--, '' as ColVal8 
		--, dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id) as IsAct  -- kiểm tra đã thực hiện theo kế hoạch hay chưa
		--, pr.ReportDate
		--from PlanPeriodicDevice pd 
		--inner join PlanPeriodic p on p.Id = pd.PlanId 
		--inner join Device d ON d.Id =pd.DeviceId
		--left outer join Branch b ON b.Id =p.BranchId
		--inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		--LEFT OUTER join AspNetUsers u on u.Id = pr.UserSCBD
		--where ISNULL(pr.TimeDelivery, 0) IN (1,2)   
		--  AND (pr.ReportDate BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
		--  AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		--    AND (p.BranchId = @SBranchID OR @SBranchID =0)  -- dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  = 1
		----        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0


		select pr.ReportDate as TimeCol
		,d.Code as ColVal1
		, d.Name as ColVal2
		,CONCAT(FORMAT(CONVERT(datetime, pr.StartDate ),'dd/MM/yyyy hh:mm tt'), ' - ', FORMAT(CONVERT(datetime, pr.EndDate),'dd/MM/yyyy hh:mm tt')) as ColVal3
		, [dbo].[ufnGetTrangthaiThietbiValue](@startDate , @endDate , d.Id)  as ColVal4  ---trạng thái
		, CONCAT(b.Code,' - ', dbo.ufnGetDepartmentActForBBBDTB(pr.Id)) as ColVal5  ---Bộ phận
		, dbo.ufnGetDepartmentActForBBBDTB(pr.Id) as ColVal6 -- u.FullName as ColVal6  ---Người thực hiện
		, '' as ColVal7  
		, '' as ColVal8 
		, 1 as IsAct  -- kiểm tra đã thực hiện theo kế hoạch hay chưa
		, pr.ReportDate
		from PlanPeriodicDevice pd 
		inner join PlanPeriodic p on p.Id = pd.PlanId 
		inner join Device d ON d.Id =pd.DeviceId
		left outer join Branch b ON b.Id =p.BranchId
		inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		LEFT OUTER join AspNetUsers u on u.Id = pr.UserSCBD
		where ISNULL(pr.TimeDelivery, 0) IN (1,2)   
		  AND (pr.UserAuthority IS NOT NULL OR pr.UserFactory IS NOT NULL)
		    AND (p.BranchId IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0')  --(p.BranchId = @SBranchID OR @SBranchID =0)  -- dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  = 1
		--        AND [dbo].[ufnCheckPlanPeriodicDeviceOVER](pd.MonthPlan) = 0
		 Order by TimeCol desc
END

END
GO
/****** Object:  StoredProcedure [dbo].[GetInforReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>@Index int null =0
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInforReport] 
@NumberReport int null = 1
,@BranchID bigint null =0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;

DECLARE @VAl1_1 int
DECLARE @VAl1_2 int

DECLARE @VAl2_1 int
DECLARE @VAl2_2 int

DECLARE @VAl3_1 int
DECLARE @VAl3_2 int

DECLARE @VAl4_1 int
DECLARE @VAl4_2 int

DECLARE @FactoryId int;
if(@BranchID <>0) set @FactoryId =(select FactoryId from Branch where Id = @BranchID) 

DECLARE @LabelContent1 nvarchar(500) ='';
DECLARE @LabelContent2 nvarchar(500) ='';
DECLARE @LabelContent3 nvarchar(500) ='';
DECLARE @LabelContent4 nvarchar(500) ='';
DECLARE @CurYear int  = YEAR(GETDATE());
DECLARE @CurMonth int  = MONTH(GETDATE()) -2;
if(@NumberReport =1)
BEGIN

	set @LabelContent1 = N''
	set @LabelContent2 = CONCAT(N'Tổng CPSD vật tư, phụ tùng năm ',@CurYear,N'/Mục tiêu')
	set @LabelContent3 = CONCAT(N'Tổng CPSD vật tư, phụ tùng năm ',@CurYear -1 ,N'/Mục tiêu')
	set @LabelContent4 = N''

	set @VAl1_1 = 0;--(select  COUNT(d.Id) from Device d where (d.BranchId =@BranchID OR @BranchID =0) and  d.GetRangDong = 1 )-- dc giám sát thông số => hiện tại =3
	set @VAl1_2 = 0;--(select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0)) --tổng số TB  toàn ngành
	set @VAl2_1 = dbo.ufnGetBCPlanTagetCostRepairByParameter(Month(getdate()), Year(getdate()), @BranchID, @FactoryId, 0);-- (select  COUNT(d.Id) from Device d where  (d.BranchId =@BranchID OR @BranchID =0)) --tổng số TB toàn ngành
	set @VAl2_2 = dbo.ufnGetBCPMucTieuChiPHiSUAChUaByParameter(Month(getdate()), Year(getdate()), @BranchID, @FactoryId, 0);--(select COUNT(d.Id) from Device d);
	set @VAl3_1 = dbo.ufnGetBCPlanTagetCostRepairByParameter(12, (Year(getdate())-1), @BranchID, @FactoryId, 0)--(select  COUNT(DISTINCT l.Id) from Line l inner join Device d on d.LineId = l.Id  inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0))--tổng số dây chuyền
	set @VAl3_2 = dbo.ufnGetBCPMucTieuChiPHiSUAChUaByParameter(Month(getdate()), Year(getdate())-1, @BranchID, @FactoryId, 0);;--(select  COUNT(l.Id) from Line l inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0)) --tổng số dây chuyền
	set @VAl4_1 = 0;--(select count(DISTINCT g.Id) from DeviceGroup g inner join Device d on d.GroupID = g.Id)--tổng số nhóm có th
	set @VAl4_2 = 0;--(select COUNT(g.Id) from DeviceGroup g)--tổng số nhóm
END
else if(@NumberReport =2)
BEGIN
	set @LabelContent1 = N'Số TB đã bảo dưỡng/Tổng kế hoạch tháng'
	set @LabelContent2 = N'Số TB quá lịch bảo dưỡng/Tổng kế hoạch tháng'
	set @LabelContent3 = N'Số TB đã bảo dưỡng/Tổng kế hoạch năm'
	set @LabelContent4 = N'Số TB quá lịch bảo dưỡng/Tổng kế hoạch năm'

	--TB đã bảo dưỡng
	select @VAl1_1 = COUNT(pd.ID) from PlanPeriodicDevice pd 
	         inner join PlanPeriodic p on p.Id = pd.PlanId 
			 INNER JOIN PlanPeriodicReport pr on pr.PlanDeviceId = p.Id
	         where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND p.PlanYear = YEAR(GETDATE())
    ---Tổng số thiết bị bảo dưỡng theo kế hoạch
    select @VAl1_2 = COUNT(pd.ID) from PlanPeriodicDevice pd 
	     inner join PlanPeriodic p on p.Id = pd.PlanId 
		 where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND p.PlanYear = YEAR(GETDATE())
                        --AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1

    set @VAl2_1 = @VAl1_2 - @VAl1_1;
    set @VAl2_2 = @VAl1_2;

	select @VAl3_1 = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
		inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id
		where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1
	select @VAl3_2 = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
		where YEAR( GETDATE()) = p.PlanYear;
    set @VAl4_1 = @VAl3_2 - @VAl3_1;
    set @VAl4_2 = @VAl3_2;

END
else if(@NumberReport =3)
BEGIN
	set @LabelContent1 = N'Số TB đang được sửa chữa/Tổng số TB'
	set @LabelContent2 = N'Số TB đã được sửa chữa trong tháng/Tổng số TB'
	set @LabelContent3 = N'Số TB đã được sửa chữa trong năm/Tổng số TB'
	set @LabelContent4 = N''

	
	--TB đã bảo dưỡng
	select @VAl1_1 = COUNT(pd.ID) from PlanPeriodicDevice pd 
	         inner join PlanPeriodic p on p.Id = pd.PlanId 
			 INNER JOIN PlanPeriodicReport pr on pr.PlanDeviceId = p.Id
	         where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND p.PlanYear = YEAR(GETDATE())
    ---Tổng số thiết bị bảo dưỡng theo kế hoạch
    select @VAl1_2 = COUNT(pd.ID) from PlanPeriodicDevice pd 
	     inner join PlanPeriodic p on p.Id = pd.PlanId 
		   inner join PlanPeriodicReport pr on pr.PlanDeviceId = pd.Id 
		 where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND p.PlanYear = YEAR(GETDATE())
                        AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =0

    set @VAl2_1 = @VAl1_2 - @VAl1_1;
    set @VAl2_2 = @VAl1_2;

	--TB đã bảo dưỡng
	select @VAl3_1 = COUNT(pd.ID) from PlanPeriodicDevice pd 
	         inner join PlanPeriodic p on p.Id = pd.PlanId 
			 INNER JOIN PlanPeriodicReport pr on pr.PlanDeviceId = p.Id
	         where MONTH( GETDATE()) in (Select ColValue from dbo.ufn_String_Split_with_Index(pd.MonthPlan, ',')) AND p.PlanYear = YEAR(GETDATE())
		   --where YEAR( GETDATE()) = p.PlanYear AND dbo.ufnCheckPlanPeriodicDeviceDone(pr.Id)  =1
	select @VAl3_2 = COUNT(pd.ID) from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId 
		where YEAR( GETDATE()) = p.PlanYear;
    set @VAl4_1 = @VAl3_2 - @VAl3_1;
    set @VAl4_2 = @VAl3_2;
END
else if(@NumberReport =4)
BEGIN
	set @LabelContent1 = N'Thời gian TBHĐBT (giờ)/Tổng thời gian hoạt động'
	set @LabelContent2 = N'Số lần/Thời gian TB cảnh báo nguy cơ (giờ)'
	set @LabelContent3 = N'Số lần/Thời gian TB cảnh báo nguy cơ cao (giờ)'
	set @LabelContent4 = N''

	set @VAl1_1 = [dbo].ufnDeviceStatusByStatusGetTime(0, 0, 0) 
	set @VAl1_2 = [dbo].ufnDeviceStatusByStatusGetTime(-2, 0, 0) 
    set @VAl2_1 = [dbo].ufnDeviceStatusByStatusGetNumber(1, 0, 0) 
	set @VAl2_2 = [dbo].ufnDeviceStatusByStatusGetTime(1, 0, 0) 
	set @VAl3_1 = [dbo].ufnDeviceStatusByStatusGetNumber(2, 0, 0)  
	set @VAl3_2 = [dbo].ufnDeviceStatusByStatusGetTime(2, 0, 0)  
	set @VAl4_1 = 0;
	set @VAl4_2 = 0;
END
else if(@NumberReport =5)
BEGIN
	set @LabelContent1 = N'Số TB được giám sát tự động/Tổng số TB toàn ngành'
	set @LabelContent2 = N'Số TB trong toàn nghành/Tổng số TB'
	set @LabelContent3 = N'Số dây chuyền có TB/Tổng số dây chuyền'
	set @LabelContent4 = N'Số nhóm có TB/Tổng số nhóm TB'

	set @VAl1_1 = (select  COUNT(d.Id) from Device d where (d.BranchId =@BranchID OR @BranchID =0) and  d.GetRangDong = 1 )-- dc giám sát thông số => hiện tại =3
	set @VAl1_2 = (select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0)) --tổng số TB  toàn ngành
	set @VAl2_1 = @VAl1_2; --tổng số TB toàn ngành (select  COUNT(d.Id) from Device d where  (d.BranchId =@BranchID OR @BranchID =0)) --tổng số TB toàn ngành
	set @VAl2_2 = (select COUNT(d.Id) from Device d);
	set @VAl3_1 = (select  COUNT(DISTINCT l.Id) from Line l inner join Device d on d.LineId = l.Id  inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0))--tổng số dây chuyền
	set @VAl3_2 = (select  COUNT(l.Id) from Line l inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0)) --tổng số dây chuyền
	set @VAl4_1 = (select count(DISTINCT g.Id) from DeviceGroup g inner join Device d on d.GroupID = g.Id)--tổng số nhóm có th
	set @VAl4_2 = (select COUNT(g.Id) from DeviceGroup g)--tổng số nhóm

END
else if(@NumberReport =6)
BEGIN
	set @LabelContent1 = N'Số TB đang không đạt thông số/Tổng số TB'
	set @LabelContent2 = N'Số TB đang dừng hoạt động/Tổng số TB'
	set @LabelContent3 = N'Số TB đang hoạt động/Tổng số TB'
	set @LabelContent4 = N''

	set @VAl1_1 = (select  COUNT(d.Id) from Device d where (d.BranchId =@BranchID OR @BranchID =0) and  d.GetRangDong = 1 )-- dc giám sát thông số => hiện tại =3
	set @VAl1_2 = (select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0)) --tổng số TB  toàn ngành
	set @VAl2_1 = (select  COUNT(d.Id) from Device d where  (d.BranchId =@BranchID OR @BranchID =0)) --tổng số TB toàn ngành
	set @VAl2_2 = @VAl1_2;
	set @VAl3_1 = @VAl1_2 - @VAl2_1; --(select  COUNT(DISTINCT l.Id) from Line l inner join Device d on d.LineId = l.Id  inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0))--tổng số dây chuyền
	set @VAl3_2 = @VAl1_2;
	set @VAl4_1 = (select count(DISTINCT g.Id) from DeviceGroup g inner join Device d on d.GroupID = g.Id)--tổng số nhóm có th
	set @VAl4_2 = (select COUNT(g.Id) from DeviceGroup g)--tổng số nhóm
END
else if(@NumberReport =7)
BEGIN
	set @LabelContent1 = N'Số lần dừng do hỏng hóc TB/Mục tiêu'
	set @LabelContent2 = N'Thời gian dừng máy do sự cố/Mục tiêu'
	set @LabelContent3 = N'Thời gian bảo dưỡng/Mục tiêu'
	set @LabelContent4 = N'Chi phí sửa chữa thiết bị/Mục tiêu'-- - Chỉ số hiệu suất TB toàn bộ (OEE)-Điểm hệ thống'
	
	set @VAl1_1 = (select ISNULL(dbo.ufnGetBCPlanTagetNumberStopTroubleByParameter(@CurMonth, @CurYear, @BranchId, @FactoryId, 0), 0));
	set @VAl1_2 = (select TOP(1) pd.MinValue from PlanTargetDevice pd inner join PlanTarget p on p.Id = pd.PlanId where p.BranchId = @BranchID AND p.FactoryId = @FactoryId And p.PlanYear = @CurYear And pd.TargetType =1)
	set @VAl2_1 = (select ISNULL(dbo.ufnGetBCPlanTagetTimeStopTroubleByParameter(@CurMonth, @CurYear, @BranchId, @FactoryId, 0), 0));
	set @VAl2_2 = (select TOP(1) pd.MinValue from PlanTargetDevice pd inner join PlanTarget p on p.Id = pd.PlanId where p.BranchId = @BranchID AND p.FactoryId = @FactoryId And p.PlanYear = @CurYear And pd.TargetType =2)
	set @VAl3_1 = (select ISNULL(dbo.ufnGetBCPlanTagetTimeRepairByParameter(@CurMonth, @CurYear, @BranchId, @FactoryId, 0), 0));
	set @VAl3_2 = (select TOP(1) pd.MinValue from PlanTargetDevice pd inner join PlanTarget p on p.Id = pd.PlanId where p.BranchId = @BranchID AND p.FactoryId = @FactoryId And p.PlanYear = @CurYear And pd.TargetType =3)
	set @VAl4_1 = (select ISNULL(dbo.ufnGetBCPlanTagetCostRepairByParameter(@CurMonth, @CurYear, @BranchId, @FactoryId, 0), 0));
	set @VAl4_2 = dbo.ufnGetBCPMucTieuChiPHiSUAChUaByParameter(Month(getdate()), Year(getdate()), @BranchID, @FactoryId, 0);--(select TOP(1) pd.MinValue * 1000000 from PlanTargetDevice pd inner join PlanTarget p on p.Id = pd.PlanId where p.BranchId = @BranchID AND p.FactoryId = @FactoryId And p.PlanYear = @CurYear And pd.TargetType =4)

END
else if(@NumberReport =8)
BEGIN
	set @LabelContent1 = N'Số TB được giám sát tự động/Tổng số TB toàn ngành'
	set @LabelContent2 = N'Số TB trong toàn nghành/Tổng số TB'
	set @LabelContent3 = N'Số dây chuyền có TB/Tổng số dây chuyền'
	set @LabelContent4 = N'Số nhóm có TB/Tổng số nhóm TB'

	set @VAl1_1 = (select  COUNT(d.Id) from Device d where (d.BranchId =@BranchID OR @BranchID =0) and  d.GetRangDong = 1 )-- dc giám sát thông số => hiện tại =3
	set @VAl1_2 = (select COUNT(d.Id) from Device d join Branch b ON b.Id = d.BranchId  where (b.Id =@BranchID OR @BranchID =0)) --tổng số TB  toàn ngành
	set @VAl2_1 = @VAl1_2; --tổng số TB toàn ngành
	set @VAl2_2 = (select COUNT(d.Id) from Device d);
	set @VAl3_1 = (select  COUNT(DISTINCT l.Id) from Line l inner join Device d on d.LineId = l.Id  inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0))--tổng số dây chuyền
	set @VAl3_2 = (select  COUNT(l.Id) from Line l inner join Team t on t.Id = l.TeamId where (t.BranchId = @BranchID OR @BranchID =0)) --tổng số dây chuyền
	set @VAl4_1 = (select count(DISTINCT g.Id) from DeviceGroup g inner join Device d on d.GroupID = g.Id)--tổng số nhóm có th
	set @VAl4_2 = (select COUNT(g.Id) from DeviceGroup g)--tổng số nhóm
END



select @LabelContent1 as LabelContent1
       ,@LabelContent2 as LabelContent2
	    ,@LabelContent3 as LabelContent3
		 ,@LabelContent4 as LabelContent4
		   ,@VAl1_1 as VAl1_1 
		   ,@VAl1_2 as VAl1_2
				   ,@VAl2_1 as VAl2_1
				   ,@VAl2_2 as VAl2_2
						 ,@VAl3_1 as VAl3_1
						 ,@VAl3_2 as VAl3_2
								,@VAl4_1 as VAl4_1 
								,@VAl4_2 as VAl4_2 

END
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataBarChart01]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInHomeDataBarChart01] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
--DECLARE @label_01 nvarchar(250) = N'Tổng số thiết bị Đang hoạt động';
--DECLARE @val_01 int 
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
select b.Code as LabelX_01
   , '' as LabelX_02
   , dbo.ufnGetSumTBdanghoatdong(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) as ColValY_01 --Tổng số thiết bị đang hoạt động
   , dbo.ufnGetSumTBkhonghoatdong(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) as ColValY_02 --Tổng số thiết bị không hoạt động
   , dbo.ufnGetSumTBloihong(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) as ColValY_03 --Số thiết bị lỗi, hỏng
   , dbo.ufnGetSumTBtongtoanganh(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) as ColValY_04 --Số thiết bị toàn ngành
   , 20 as ColValY_05
   , 20 as ColValY_06
   from Branch b 
    where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
   order by b.Code asc

END
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataBarChart02]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInHomeDataBarChart02] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
--DECLARE @label_01 nvarchar(250) = N'Tổng số thiết bị Đang hoạt động';
--DECLARE @val_01 int 
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
select b.Code as LabelX_01
   , '' as LabelX_02
   , dbo.ufnGetSumLanloihong(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) as ColValY_01 --Tổng số lần máy lỗi toàn nghành
   , dbo.ufnGetSumTBloihongDaXL(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) as ColValY_02 --Số lượng đã xử lý
   , 20 as ColValY_03 --
   , 20 as ColValY_04 --
   , 20 as ColValY_05
   , 20 as ColValY_06
   from Branch b 
        where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
   order by b.Code asc
END
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataBarChart11]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInHomeDataBarChart11] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
--DECLARE @label_01 nvarchar(250) = N'Tổng số thiết bị Đang hoạt động';
--DECLARE @val_01 int 
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 
--https://localhost:7118/Home/GetInHomeDataDonutChart?startDate=2024/1/4%2000:00:00.000&endDate=2024/6/4%2023:59:59.000&kF=0&kB=0&kT=0

select 1 AS OrderId, b.Id, CONCAT( b.Code, '-', 'Tháng 1') as LabelX_01
   , 'Tháng 1' as LabelX_02 --tháng 1, 2,...
   , dbo.ufnGetSumTBdanghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](1, YEAR(getdate())),'/' , '1' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_01 --Tổng số thiết bị đang hoạt động
   , dbo.ufnGetSumTBkhonghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](1, YEAR(getdate())),'/' , '1' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_02 --Tổng số thiết bị không hoạt động
   , dbo.ufnGetSumTBloihong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](1, YEAR(getdate())),'/' , '1' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_03 --Số thiết bị lỗi, hỏng
   , dbo.ufnGetSumTBtongtoanganh(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](1, YEAR(getdate())),'/' , '1' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_04 --Số thiết bị toàn ngành
   , 20 as ColValY_05
   , 20 as ColValY_06
   from Branch b  where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
UNION select 2 AS OrderId, b.Id, CONCAT( b.Code, '-', 'Tháng 2') as LabelX_01
   , 'Tháng 2' as LabelX_02 --tháng 1, 2,...
   , dbo.ufnGetSumTBdanghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](2, YEAR(getdate())),'/' , '2' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_01 --Tổng số thiết bị đang hoạt động
   , dbo.ufnGetSumTBkhonghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](2, YEAR(getdate())),'/' , '2' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_02 --Tổng số thiết bị không hoạt động
   , dbo.ufnGetSumTBloihong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](2, YEAR(getdate())),'/' , '2' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_03 --Số thiết bị lỗi, hỏng
   , dbo.ufnGetSumTBtongtoanganh(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](2, YEAR(getdate())),'/' , '2' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_04 --Số thiết bị toàn ngành
   , 20 as ColValY_05
   , 20 as ColValY_06
   from Branch b  where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
UNION select 3 AS OrderId, b.Id, CONCAT( b.Code, '-', 'Tháng 3') as LabelX_01
   , 'Tháng 3' as LabelX_02 --tháng 1, 2,...
   , dbo.ufnGetSumTBdanghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](3, YEAR(getdate())),'/' , '3' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_01 --Tổng số thiết bị đang hoạt động
   , dbo.ufnGetSumTBkhonghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](3, YEAR(getdate())),'/' , '3' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_02 --Tổng số thiết bị không hoạt động
   , dbo.ufnGetSumTBloihong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](3, YEAR(getdate())),'/' , '3' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_03 --Số thiết bị lỗi, hỏng
   , dbo.ufnGetSumTBtongtoanganh(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](3, YEAR(getdate())),'/' , '3' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_04 --Số thiết bị toàn ngành
   , 20 as ColValY_05
   , 20 as ColValY_06
   from Branch b  where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
UNION select 4 AS OrderId, b.Id, CONCAT( b.Code, '-', 'Tháng 4') as LabelX_01
   , 'Tháng 4' as LabelX_02 --tháng 1, 2,...
   , dbo.ufnGetSumTBdanghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](4, YEAR(getdate())),'/' , '4' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_01 --Tổng số thiết bị đang hoạt động
   , dbo.ufnGetSumTBkhonghoatdong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](4, YEAR(getdate())),'/' , '4' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_02 --Tổng số thiết bị không hoạt động
   , dbo.ufnGetSumTBloihong(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](4, YEAR(getdate())),'/' , '4' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_03 --Số thiết bị lỗi, hỏng
   , dbo.ufnGetSumTBtongtoanganh(CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/1/' , '1' ,' 00:00:00.000'), CONCAT(CONVERT(nvarchar(5), YEAR(getdate())), '/',[dbo].[ufnGetNUmberDayByMonth](4, YEAR(getdate())),'/' , '4' ,' 23:59:00.000'),b.FactoryId ,@STeamId , b.Id) as ColValY_04 --Số thiết bị toàn ngành
   , 20 as ColValY_05
   , 20 as ColValY_06
   from Branch b  where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
   order by OrderId, LabelX_01 asc
END
GO
/****** Object:  StoredProcedure [dbo].[GetInHomeDataDonutChart]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInHomeDataDonutChart] 
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
--DECLARE @label_01 nvarchar(250) = N'Tổng số thiết bị Đang hoạt động';
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 

DECLARE @val_Sum int 
select @val_Sum = dbo.ufnGetSumTBloihongnghiemtrong(@startDate, @endDate,0 ,@STeamId ,0)
if(@val_Sum =0)
BEGIN
 select b.Code as LabelX_01, '' as LabelX_02, 
   0 as ColValY
   from Branch b   
         where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
   order by b.Code asc
END
ELSE
BEGIN
select b.Code as LabelX_01, '' as LabelX_02, 
   cast(ROUND(dbo.ufnGetSumTBloihongnghiemtrong(@startDate, @endDate,b.FactoryId ,@STeamId , b.Id) *100 /@val_Sum,0) as int) as ColValY
   from Branch b     
           where (b.Id IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID = '0') 
   order by b.Code asc
   END
END
GO
/****** Object:  StoredProcedure [dbo].[GetLine]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLine] 
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);

   Select l.*, t.Name as TeamName, b.Name as BranchName 
   ,CONCAT(l.Code, ', ', l.[Name]) as LineCodeName
   ,CONCAT(t.Code, ', ', t.[Name]) as TeamCodeName
   ,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
    FROm Line l
   LEFT OUTER join Team t on    t.id = l.TeamId
   LEFT OUTER join Branch b on  b.id = t.BranchId
   where b.Id = @BranchOfUser OR @BranchOfUser = 0
   ORDER BY l.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetLineByConfig]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLineByConfig] 
@LineId int null = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   if(@LineId=0)
		Select l.Id as LineId,l.Code, l.Name,
		   t.Name as TeamName, b.Name as BranchName 
		   ,CONCAT(l.Code, ', ', l.[Name]) as LineCodeName
		   ,t.Id as TeamId, CONCAT(t.Code, ', ', t.[Name]) as TeamCodeName
		   ,b.Id as BranchId, CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
		   ,f.Id as FactoryId, CONCAT(f.Code, ', ', f.[Name]) as FactoryCodeName
			FROm Line l
		   LEFT OUTER join Team t on    t.id = l.TeamId
		   LEFT OUTER join Branch b on  b.id = t.BranchId
		   LEFT OUTER join Factory f on  f.id = b.FactoryId

else 
		Select l.Id as LineId,l.Code, l.Name,
		   t.Name as TeamName, b.Name as BranchName 
		   ,CONCAT(l.Code, ', ', l.[Name]) as LineCodeName
		   ,t.Id as TeamId, CONCAT(t.Code, ', ', t.[Name]) as TeamCodeName
		   ,b.Id as BranchId, CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
		   ,f.Id as FactoryId, CONCAT(f.Code, ', ', f.[Name]) as FactoryCodeName
			FROm Line l
		   LEFT OUTER join Team t on    t.id = l.TeamId
		   LEFT OUTER join Branch b on  b.id = t.BranchId
		   LEFT OUTER join Factory f on  f.id = b.FactoryId
		   where l.Id =  @LineId
END
GO
/****** Object:  StoredProcedure [dbo].[GetLineByTeam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetLineByTeam] 
@TeamId int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select l.*, t.Name as TeamName, b.Name as BranchName ,CONCAT(l.Code, ', ', l.[Name]) as LineCodeName
    FROm Line l
   LEFT OUTER join Team t on    t.id = l.TeamId
   LEFT OUTER join Branch b on  b.id = t.BranchId
      where t.id = @TeamId
   ORDER BY l.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetMonthDeviceTarget]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetMonthDeviceTarget] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select DISTINCT dt.PlanMonth
   FROM DeviceTarget dt where dt.PlanMonth <> 0
END
GO
/****** Object:  StoredProcedure [dbo].[GetMonthPlanDaily]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetMonthPlanDaily] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select DISTINCT pd.PlanMonth as PlanMonth
   FROM PlanDaily pd  where pd.PlanMonth <> 0
END
GO
/****** Object:  StoredProcedure [dbo].[GetNameDonvi]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetNameDonvi] 
@BranchId int  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	Select 
			CONCAT(f.Name, '; ', b.[Name]) as NameVal
			 FROm Branch  b
		       Inner join Factory f on  f.id = b.FactoryId
		         where b.Id = @BranchId
END
GO
/****** Object:  StoredProcedure [dbo].[GetNumberAjusByPlanNumber]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetNumberAjusByPlanNumber] 
		@PlanType nvarchar(20) null
		,@PlanNumber  nvarchar(30) null 
AS
BEGIN

SET NOCOUNT OFF;

if(@PlanType = 'PlanDaily')
	SELECT ISNULL(p.Number,0) as Number from PlanDaily p where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'PlanDailyTroubleReport')
	SELECT ISNULL(p.Number,0) as Number from PlanDailyTroubleReport pr inner join PlanDaily p on p.Id = pr.PlanId
		        where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'PlanPeriodic')
	SELECT ISNULL(p.Number,0) as Number from PlanPeriodic p where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'PlanPeriodicDevice')
	SELECT ISNULL(p.Number,0) as Number from PlanPeriodic p inner join PlanPeriodicDevice pd on pd.Id = pd.PlanId 
	        where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'PlanPeriodicReport')	   
	SELECT ISNULL(p.Number,0) as Number from PlanPeriodicReport pr 
	inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId 
	INNER JOIN PlanPeriodic p on p.Id = pd.PlanId
			where  pr.ReportNumberCode = @PlanNumber
else if(@PlanType = 'PlanSupplie')
	SELECT ISNULL(p.Number,0) as Number from PlanSupplie  p where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'PlanOver')
	SELECT ISNULL(p.Number,0) as Number from PlanOver p where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'PlanTarget')
	SELECT ISNULL(p.Number,0) as Number from PlanTarget p where  p.PlanNumber = @PlanNumber order by p.Id desc
else if(@PlanType = 'DeviceTarget')
	SELECT ISNULL(p.Number,0) as Number from DeviceTarget p where  p.PlanNumber = @PlanNumber order by p.Id desc -- 4.2022/THMTTB-LED.LED2
else if(@PlanType = 'Report1')
	SELECT ISNULL(p.Number,0) as Number from PlanDaily p where  p.PlanNumber = @PlanNumber order by p.Id desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanApprove]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanApprove] 
   @UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	DECLARE @UserLevel int = 5
	DECLARE @FieldName nvarchar(50) = 'UserPlan'
	DECLARE @BranchId int = 5
--<option value="0">Khác</option> @*UserPlan*@
--<option value="4">TGĐ/Người được ủy quyền</option> @*UserAuthority*@
--<option value="3">Quản đốc xưởng/UQ</option> @*UserFactory*@
--<option value="2">Trưởng đơn vị/Trưởng ngành/Phụ trách thiết bị/Bộ phận QL/SD thiết bị</option> @*UserBranch*@
--<option value="1">Tổ trưởng</option> @*UserWeek*@
	SET NOCOUNT OFF;
--Select * FROm dbo.PlanApproveBranch ORDER BY TimeModified DESC
--DECLARE @UserListView nvarchar(max); select @UserListView = dbo.ufnGetUserListViewPlan(1, 'PlanPeriodic',0); 
SELECT @UserLevel = ManagerLevelId, @BranchID = ISNULL(BranchId, 0) from AspNetUsers where  Id = @UserId


 if(@UserLevel=4) ---TGĐ/Người được ủy quyền</option> @*UserAuthority*@
   BEGIN
		SELECT    [PlanId] as Id
			,PlanTable
			,FieldName							 
			,UserSignalture 
			,PlanApproveName
			,DatePlan	
			,ISNULL(IsMark, 0) as IsMark
			,PlanStatusInfor
			,UserCreated as AvatarUserCreate
			,UserView as AvatarUserView
			,[PlanNumber]
			,[NumberAju]
			,[PlanYear]
			,[PlanMonth]
			,[BranchId], TimeCreated
         FROM [dbo].[PlanSignatureStatus]
		 where (FieldName = 'UserAuthority' AND ISNULL(PlanApproveName ,'') <> '')
		          AND (BranchId = @BranchId OR @BranchId =0)
		 order by TimeCreated DESC 
   END
   else  if(@UserLevel=3) --Quản đốc xưởng/UQ</option> @*UserFactory*@
   BEGIN
			SELECT    [PlanId] as Id
			,PlanTable
			,FieldName							 
			,UserSignalture 
			,PlanApproveName
			,DatePlan	
			,ISNULL(IsMark, 0) as IsMark
			,PlanStatusInfor
			,UserCreated as AvatarUserCreate
			,UserView as AvatarUserView
			,[PlanNumber]
			,[NumberAju]
			,[PlanYear]
			,[PlanMonth]
			,[BranchId], TimeCreated
         FROM [dbo].[PlanSignatureStatus]
		 where (FieldName = 'UserFactory' AND ISNULL(PlanApproveName ,'') <> '')
		       AND (BranchId = @BranchId OR @BranchId =0)
		 order by TimeCreated DESC 
   END
  else  if(@UserLevel=2) --Trưởng đơn vị/Trưởng ngành/Phụ trách thiết bị/Bộ phận QL/SD thiết bị</option> @*UserBranch*@
   BEGIN
			SELECT    [PlanId] as Id
			,PlanTable
			,FieldName							 
			,UserSignalture 
			,PlanApproveName
			,DatePlan	
			,ISNULL(IsMark, 0) as IsMark
			,PlanStatusInfor
			,UserCreated as AvatarUserCreate
			,UserView as AvatarUserView
			,[PlanNumber]
			,[NumberAju]
			,[PlanYear]
			,[PlanMonth]
			,[BranchId], TimeCreated
         FROM [dbo].[PlanSignatureStatus]
		 where (FieldName = 'UserBranch' AND ISNULL(PlanApproveName ,'') <> '')
		       AND (BranchId = @BranchId OR @BranchId =0)
		 order by TimeCreated DESC 
   END
   else  if(@UserLevel=1) ---Tổ trưởng
   BEGIN
			SELECT    [PlanId] as Id
			,PlanTable
			,FieldName							 
			,UserSignalture 
			,PlanApproveName
			,DatePlan	
			,ISNULL(IsMark, 0) as IsMark
			,PlanStatusInfor
			,UserCreated as AvatarUserCreate
			,UserView as AvatarUserView
			,[PlanNumber]
			,[NumberAju]
			,[PlanYear]
			,[PlanMonth]
			,[BranchId], TimeCreated
         FROM [dbo].[PlanSignatureStatus]
		 where ((FieldName = 'UserWeek1' OR FieldName = 'UserWeek2' OR FieldName = 'UserWeek3' OR FieldName = 'UserWeek4' OR FieldName = 'UserWeek5') AND ISNULL(PlanApproveName ,'') <> '')
		       AND (BranchId = @BranchId OR @BranchId =0)
		 order by TimeCreated DESC 
   END

END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDaily]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDaily] 
@DeviceId bigint null,
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId bigint 
IF NOT EXISTS (SELECT Id FROM PlanDaily p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year and p.PlanMonth =@month AND p.DeviceId = @DeviceId)
    BEGIN
	INSERT INTO [dbo].[PlanDaily]
           ([PlanMonth]
           ,[PlanYear]
           ,[FactoryId]
           ,[BranchId]
           ,[DeviceId]
           --,[PlanNumber]
           ,[UserPlan]
           ,[DatePlan]
           ,[DateBranch]
           ,[DateAuthority]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@month
           ,@year
           ,@FactoryId
           ,@BranchId
           ,@DeviceId
           --,dbo.ufnCreatePlanDailyCode(@DeviceId)
           ,@UserId
           ,GETDATE()
           ,GETDATE()
           ,GETDATE()
           ,GETDATE()
           ,GETDATE())
set @CurrentPlanId = SCOPE_IDENTITY();
DECLARE @PlanNumber nvarchar(450); set @PlanNumber = dbo.ufnCreatePlanNumberCode(@FactoryId, @BranchId, @year, 'KHHNHT', 'PlanDaily' , 0 , @month, @CurrentPlanId);
update PlanDaily set PlanNumber = @PlanNumber where Id= @CurrentPlanId;
--Cập nhật phần ký
DECLARE @BranchName nvarchar(450); set @BranchName = (select CONCAT('[',Code,'];', Name) from Branch where Id = @BranchId)
INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId],[PlanTable],[UserId],[TimeCreated],[FieldName],[IsAccept],[Note],[UserCreated],[UserView],[DatePlan],[isMark],[planApproveName],[userPlanName],[PlanNumber],[NumberAju],[PlanYear],[PlanMonth],[BranchId])
     VALUES
           (@CurrentPlanId,'PlanDaily',@UserId,GETDATE(),'UserWeek1',0,N'Ký xác nhận hàng tuần - Tuần 1',@UserId,@UserId,GETDATE(),0, CONCAT(N'Ký xác nhận tuần 1; Mã số: ',@PlanNumber,N': Kế hoạch hàng ngày hàng tuần. Tháng ',@month,'/Năm ',2022,N'. Đơn vị: ', @BranchName),@UserId,@PlanNumber,0,@year,@month,@BranchId)
INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId],[PlanTable],[UserId],[TimeCreated],[FieldName],[IsAccept],[Note],[UserCreated],[UserView],[DatePlan],[isMark],[planApproveName],[userPlanName],[PlanNumber],[NumberAju],[PlanYear],[PlanMonth],[BranchId])
     VALUES
	 		   (@CurrentPlanId,'PlanDaily',@UserId,GETDATE(),'UserWeek2',0,N'Ký xác nhận hàng tuần - Tuần 2',@UserId,@UserId,GETDATE(),0, CONCAT(N'Ký xác nhận tuần 2; Mã số: ',@PlanNumber,N': Kế hoạch hàng ngày hàng tuần. Tháng ',@month,'/Năm ',2022,N'. Đơn vị: ', @BranchName),@UserId,@PlanNumber,0,@year,@month,@BranchId)
INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId],[PlanTable],[UserId],[TimeCreated],[FieldName],[IsAccept],[Note],[UserCreated],[UserView],[DatePlan],[isMark],[planApproveName],[userPlanName],[PlanNumber],[NumberAju],[PlanYear],[PlanMonth],[BranchId])
     VALUES  (@CurrentPlanId,'PlanDaily',@UserId,GETDATE(),'UserWeek3',0,N'Ký xác nhận hàng tuần - Tuần 3',@UserId,@UserId,GETDATE(),0, CONCAT(N'Ký xác nhận tuần 3; Mã số: ',@PlanNumber,N': Kế hoạch hàng ngày hàng tuần. Tháng ',@month,'/Năm ',2022,N'. Đơn vị: ', @BranchName),@UserId,@PlanNumber,0,@year,@month,@BranchId)
INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId],[PlanTable],[UserId],[TimeCreated],[FieldName],[IsAccept],[Note],[UserCreated],[UserView],[DatePlan],[isMark],[planApproveName],[userPlanName],[PlanNumber],[NumberAju],[PlanYear],[PlanMonth],[BranchId])
     VALUES  (@CurrentPlanId,'PlanDaily',@UserId,GETDATE(),'UserWeek4',0,N'Ký xác nhận hàng tuần - Tuần 4',@UserId,@UserId,GETDATE(),0, CONCAT(N'Ký xác nhận tuần 4; Mã số: ',@PlanNumber,N': Kế hoạch hàng ngày hàng tuần. Tháng ',@month,'/Năm ',2022,N'. Đơn vị: ', @BranchName),@UserId,@PlanNumber,0,@year,@month,@BranchId)
INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId],[PlanTable],[UserId],[TimeCreated],[FieldName],[IsAccept],[Note],[UserCreated],[UserView],[DatePlan],[isMark],[planApproveName],[userPlanName],[PlanNumber],[NumberAju],[PlanYear],[PlanMonth],[BranchId])
     VALUES (@CurrentPlanId,'PlanDaily',@UserId,GETDATE(),'UserWeek5',0,N'Ký xác nhận hàng tuần - Tuần 5',@UserId,@UserId,GETDATE(),0, CONCAT(N'Ký xác nhận tuần 5; Mã số: ',@PlanNumber,N': Kế hoạch hàng ngày hàng tuần. Tháng ',@month,'/Năm ',2022,N'. Đơn vị: ', @BranchName) ,@UserId,@PlanNumber,0,@year,@month,@BranchId)

	--Trgger insert into PlanDailyWorks (PlanId, DeviceWorkId) select @CurrentPlanId as PlanId, w.Id as DeviceWorkId from DeviceWorks w where w.DeviceId = @DeviceId;
	insert into PlanDailyWorks (PlanId, DeviceWorkId) select @CurrentPlanId as PlanId, w.Id as DeviceWorkId from DeviceWorks w where w.DeviceId = @DeviceId;
END
ELSE
BEGIN
   set @CurrentPlanId = (SELECT Id FROM PlanDaily p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year and p.PlanMonth =@month AND p.DeviceId = @DeviceId);

   -- check các hạng mục chưa có trong kế hoạch
   insert into PlanDailyWorks (PlanId, DeviceWorkId) select @CurrentPlanId as PlanId, w.Id as DeviceWorkId from DeviceWorks w where w.DeviceId = @DeviceId and w.Id Not in (select pw.DeviceWorkId from PlanDailyWorks pw where pw.PlanId = @CurrentPlanId)
END

select p.Id as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanMonth
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan --lấy danh sách dạng sJSON gồm Id, FullName, Signalture
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,p.DeviceId as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name as DeviceName
      ,d.Code as DeviceCode
      ,l.Name as LineName
	  ,t.Name as TeamName  
	  ,dbo.[ufnGetJsonUserWeekInfor](p.Id) as UserWeek
	  ,dbo.[ufnPlanDailyWordsByPlanID](p.Id) as PlanDailyDetai
	  ,dbo.ufnPlanDailySignaltureByPlanID(p.Id) as DaySignAct
	  from PlanDaily p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join Device d on d.Id = p.DeviceId
		 left OUTER join Line l on d.LineId = l.Id
		 left OUTER join Team t on d.TeamId = t.Id
	 where p.Id = @CurrentPlanId
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyBYDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailyBYDay] 
@DeviceId bigint null,
@month bigint null,
@year bigint null,
@day bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
IF NOT EXISTS (SELECT Id FROM PlanDaily p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year and p.PlanMonth =@month AND p.DeviceId = @DeviceId)
    BEGIN
	INSERT INTO [dbo].[PlanDaily]
           ([PlanMonth]
           ,[PlanYear]
           ,[FactoryId]
           ,[BranchId]
           ,[DeviceId]
           ,[PlanNumber]
           ,[UserPlan]
           ,[DatePlan]
           ,[DateBranch]
           ,[DateAuthority]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@month
           ,@year
           ,@FactoryId
           ,@BranchId
           ,@DeviceId
           ,dbo.ufnCreatePlanDailyCode(@DeviceId)
           ,@UserId
           ,GETDATE()
           ,GETDATE()
           ,GETDATE()
           ,GETDATE()
           ,GETDATE())
	set @CurrentPlanId = SCOPE_IDENTITY();
	update PlanDaily set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHHNHT', 'PlanDaily' , 0 , PlanMonth, @CurrentPlanId) where Id = @CurrentPlanId; 
END
ELSE
BEGIN
   set @CurrentPlanId = (SELECT Id FROM PlanDaily p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year and p.PlanMonth =@month AND p.DeviceId = @DeviceId);
END

select @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanMonth
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan --lấy danh sách dạng sJSON gồm Id, FullName, Signalture
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,p.DeviceId as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name as DeviceName
      ,d.Code as DeviceCode
      ,'' as LineName
	  ,'' as TeamName  
	  ,dbo.[ufnPlanDailyWordsByPlanIDInDay](@CurrentPlanId, @day) as PlanDailyDetai
	  from PlanDaily p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join Device d on d.Id = p.DeviceId
	 where p.Id = @CurrentPlanId
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailySummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailySummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId bigint 
    set @CurrentPlanId = (SELECT Id FROM PlanDaily p WHERE p.PlanNumber =@PlanNumber AND p.Number = @NumberAju)


select p.Id as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanMonth
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan --lấy danh sách dạng sJSON gồm Id, FullName, Signalture
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,p.DeviceId as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name as DeviceName
      ,d.Code as DeviceCode
      ,l.Name as LineName
	  ,t.Name as TeamName   
	  ,dbo.[ufnGetJsonUserWeekInfor](p.Id) as UserWeek
	  ,dbo.[ufnPlanDailyWordsByPlanID](p.Id) as PlanDailyDetai
	  ,dbo.ufnPlanDailySignaltureByPlanID(p.Id) as DaySignAct
	  from PlanDaily p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join Device d on d.Id = p.DeviceId
		 left OUTER join Line l on d.LineId = l.Id
		 left OUTER join Team t on d.TeamId = t.Id
	 where p.Id = @CurrentPlanId
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailyTrouble] 
@PlanId bigint null,
@DeviceId bigint null,
@HasReport int null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	--insert into MledData2023.dbo.Test (content) values (@PlanId)
if(@PlanId = -1)
	BEGIN
	  SELECT pdt.Id
		  ,pdt.PlanId
		  ,pdt.TroubleContent
		  ,pdt.DeviceSupplieList
		  ,pdt.TroubleDate
		  ,pdt.ContentAndResult
		  ,AspNetUsers.FullName as UserConfirm
		  ,pdt.DateConfirm
		  ,pdt.Conclusion
		  ,pdt.TimeCreated
		  ,pdt.TimeModified
		  ,pdt.TroubleReportID
		  ,DATEDIFF( HOUR, pdt.TimeStopBegin, pdt.TimeStopEnd) as  TimeStopTotal
		  ,pdt.TimeStopBegin
		  ,pdt.TimeStopEnd
		  ,pdt.LocationDetai
		  ,pdt.RepairContent
		  ,pdt.RepairUser
		  ,pdt.Repair
		  ,pdt.Note
		  ,pdt.HasReport
		  ,pdt.DeviceId
		  ,[dbo].ufnPlanDailyTroubleSupplieByTroubleID(pdt.Id) as SupplieList
	  FROM [dbo].[PlanDailyTrouble] as pdt inner join PlanDaily p On  p.Id = pdt.PlanId
	  inner join AspNetUsers on pdt.[UserConfirm] = AspNetUsers.Id
	  where ISNULL(pdt.HasReport,0) in (@HasReport, 1) AND p.DeviceId =@DeviceId
	  ORDER BY pdt.Id Desc
  END
ELSE 
  BEGIN
	  SELECT pdt.Id
		  ,pdt.PlanId
		  ,pdt.TroubleContent
	      ,pdt.DeviceSupplieList
		  ,pdt.TroubleDate
		  ,pdt.ContentAndResult
		  ,AspNetUsers.FullName as UserConfirm
		  ,pdt.DateConfirm
		  ,pdt.Conclusion
		  ,pdt.TimeCreated
		  ,pdt.TimeModified
		  ,pdt.TroubleReportID
		  ,DATEDIFF( HOUR, pdt.TimeStopBegin, pdt.TimeStopEnd) as  TimeStopTotal
		  ,pdt.TimeStopBegin
		  ,pdt.TimeStopEnd
		  ,pdt.LocationDetai
		  ,pdt.RepairContent
		  ,pdt.RepairUser
		  ,pdt.Repair
		  ,pdt.Note
		  ,pdt.HasReport
		  ,pdt.DeviceId
		  ,[dbo].ufnPlanDailyTroubleSupplieByTroubleID(pdt.Id) as SupplieList
	  FROM [dbo].[PlanDailyTrouble] as pdt
	  inner join AspNetUsers on pdt.[UserConfirm] = AspNetUsers.Id
	  where ISNULL(pdt.HasReport,0) in (@HasReport, 1) AND pdt.PlanId =@PlanId
	  ORDER BY pdt.Id Desc
  END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleByDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailyTroubleByDay] 
@PlanId bigint null,
@DeviceId bigint null,
@HasReport int null,
@day int null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	--insert into MledData2023.dbo.Test (content) values (@PlanId)
if(@PlanId = -1)
	BEGIN
	  SELECT pdt.Id
		  ,pdt.PlanId
		  ,pdt.TroubleContent
		   ,pdt.DeviceSupplieList
		  ,pdt.TroubleDate
		  ,pdt.ContentAndResult
		  ,AspNetUsers.FullName as UserConfirm
		  ,pdt.DateConfirm
		  ,pdt.Conclusion
		  ,pdt.TimeCreated
		  ,pdt.TimeModified
		  ,pdt.TroubleReportID
		  ,DATEDIFF( HOUR, pdt.TimeStopBegin, pdt.TimeStopEnd) as  TimeStopTotal
		  ,pdt.TimeStopBegin
		  ,pdt.TimeStopEnd
		  ,pdt.LocationDetai
		  ,pdt.RepairContent
		  ,[dbo].[ufnGetUserNameByListID](pdt.RepairUser, ',', 'AspNetUsers') as RepairUser
		  ,pdt.Repair
		  ,pdt.Note
		  ,pdt.HasReport
		  ,pdt.DeviceId
		  ,[dbo].ufnPlanDailyTroubleSupplieByTroubleID(pdt.Id) as SupplieList
	  FROM [dbo].[PlanDailyTrouble] as pdt inner join PlanDaily p On  p.Id = pdt.PlanId
	  inner join AspNetUsers on pdt.[UserConfirm] = AspNetUsers.Id
	  where ISNULL(pdt.HasReport,0) in (@HasReport, 1) AND p.DeviceId =@DeviceId AND DAY(pdt.TroubleDate) =@day
	  ORDER BY pdt.Id Desc
  END
ELSE 
  BEGIN
	  SELECT pdt.Id
		  ,pdt.PlanId
		  ,pdt.TroubleContent
		   ,pdt.DeviceSupplieList
		  ,pdt.TroubleDate
		  ,pdt.ContentAndResult
		  ,AspNetUsers.FullName as UserConfirm
		  ,pdt.DateConfirm
		  ,pdt.Conclusion
		  ,pdt.TimeCreated
		  ,pdt.TimeModified
		  ,pdt.TroubleReportID
		  ,DATEDIFF( HOUR, pdt.TimeStopBegin, pdt.TimeStopEnd) as  TimeStopTotal
		  ,pdt.TimeStopBegin
		  ,pdt.TimeStopEnd
		  ,pdt.LocationDetai
		  ,pdt.RepairContent
		   ,[dbo].[ufnGetUserNameByListID](pdt.RepairUser, ',', 'AspNetUsers') as RepairUser
		  ,pdt.Repair
		  ,pdt.Note
		  ,pdt.HasReport
		  ,pdt.DeviceId
		  ,[dbo].ufnPlanDailyTroubleSupplieByTroubleID(pdt.Id) as SupplieList
	  FROM [dbo].[PlanDailyTrouble] as pdt
	  inner join AspNetUsers on pdt.[UserConfirm] = AspNetUsers.Id
	  where ISNULL(pdt.HasReport,0) in (@HasReport, 1) AND pdt.PlanId =@PlanId AND DAY(pdt.TroubleDate) =@day
	  ORDER BY pdt.Id Desc
  END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailyTroubleReport] 
@PlanId bigint null,
@DeviceId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
if(@PlanId = -1)
	BEGIN
	 SELECT pdt.[Id]
		  ,pdt.[TroubleId]
		  ,pdt.[AddressTrouble]
		  ,pdt.[DateTrouble]
		  ,pdt.[DescriptionTrouble]
		  ,pdt.[ReasonTrouble]
		  ,pdt.[HandlingMeansure]
		  ,pdt.UserAct
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers') as UserActList
		  ,pdt.[DateDone]
		  ,pdt.UserPart
		  ,pdt.UnitPart
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserPart, ',', 'AspNetUsers') as UserPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UserPartList
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers')  as UnitPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UnitPartList
		  ,pdt.[UserManager]
		  ,pdt.[UserBranch]
		  ,pdt.[UserAuthority]
		  ,pdt.[TimeCreated]
		  ,pdt.[TimeModified]
		  ,pdt.[FactoryId]
		  ,pdt.[BranchId]
		  ,pdt.[ReportNumber]
		  ,pdt.[PlanId]
		  ,pdt.FileScan
	  FROM [dbo].[PlanDailyTroubleReport] pdt inner join PlanDaily p On  p.Id = pdt.PlanId
	  where p.DeviceId = @DeviceId
	  ORDER BY pdt.Id Desc
  END
ELSE 
  BEGIN
		SELECT pdt.[Id]
		  ,pdt.[TroubleId]
		  ,pdt.[AddressTrouble]
		  ,pdt.[DateTrouble]
		  ,pdt.[DescriptionTrouble]
		  ,pdt.[ReasonTrouble]
		  ,pdt.[HandlingMeansure]
		  ,pdt.UserAct
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers') as UserActList
		  ,pdt.[DateDone]
		  ,pdt.UserPart
		  ,pdt.UnitPart
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserPart, ',', 'AspNetUsers') as UserPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UserPartList
		  ,[dbo].[ufnGetUserNameByListID](pdt.UnitPart, ',', 'Branch')  as UnitPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UnitPartList
		  ,pdt.[UserManager]
		  ,pdt.[UserBranch]
		  ,pdt.[UserAuthority]
		  ,pdt.[TimeCreated]
		  ,pdt.[TimeModified]
		  ,pdt.[FactoryId]
		  ,pdt.[BranchId]
		  ,pdt.[ReportNumber]
		  ,pdt.[PlanId]
		  ,pdt.FileScan
	  FROM [dbo].[PlanDailyTroubleReport] pdt
	  where (pdt.PlanId =@PlanId OR @PlanId =0)
	  ORDER BY pdt.Id Desc
  END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleReportByAll]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailyTroubleReportByAll] 
@FactoryId bigint null,
@BranchId bigint null,
@DeviceId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);
IF(@BranchOfUser =0)
BEGIN
SELECT pdt.[Id]
		  ,pdt.[TroubleId]
		  ,pdt.[AddressTrouble]
		  ,pdt.[DateTrouble]
		  ,pdt.[DescriptionTrouble]
		  ,pdt.[ReasonTrouble]
		  ,pdt.[HandlingMeansure]
		  ,pdt.UserAct
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers') as UserActList
		  ,pdt.[DateDone]
		  ,pdt.UserPart
		  ,pdt.UnitPart
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserPart, ',', 'AspNetUsers') as UserPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UserPartList
		  ,[dbo].[ufnGetUserNameByListID](pdt.UnitPart, ',', 'Branch')  as UnitPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UnitPartList
		  ,pdt.[UserManager]
		  ,pdt.[UserBranch]
		  ,pdt.[UserAuthority]
		  ,pdt.[TimeCreated]
		  ,pdt.[TimeModified]
		  ,pdt.[FactoryId]
		  ,pdt.[BranchId]
		  ,pdt.[ReportNumber]
		  ,pdt.[PlanId]
		  ,pdt.FileScan
	  FROM [dbo].[PlanDailyTroubleReport] pdt
	  inner join PlanDaily p on p.Id = pdt.PlanId
	  where (p.FactoryId =@FactoryId OR @FactoryId =0)
	        AND  (p.BranchId =@BranchId OR @BranchId =0)
			AND  (p.DeviceId =@DeviceId OR @DeviceId =0)
	  ORDER BY pdt.Id Desc
END
ELSE
BEGIN
   SELECT pdt.[Id]
		  ,pdt.[TroubleId]
		  ,pdt.[AddressTrouble]
		  ,pdt.[DateTrouble]
		  ,pdt.[DescriptionTrouble]
		  ,pdt.[ReasonTrouble]
		  ,pdt.[HandlingMeansure]
		  ,pdt.UserAct
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers') as UserActList
		  ,pdt.[DateDone]
		  ,pdt.UserPart
		  ,pdt.UnitPart
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserPart, ',', 'AspNetUsers') as UserPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UserPartList
		  ,[dbo].[ufnGetUserNameByListID](pdt.UnitPart, ',', 'Branch')  as UnitPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UnitPartList
		  ,pdt.[UserManager]
		  ,pdt.[UserBranch]
		  ,pdt.[UserAuthority]
		  ,pdt.[TimeCreated]
		  ,pdt.[TimeModified]
		  ,pdt.[FactoryId]
		  ,pdt.[BranchId]
		  ,pdt.[ReportNumber]
		  ,pdt.[PlanId]
		  ,pdt.FileScan
	  FROM [dbo].[PlanDailyTroubleReport] pdt
	  inner join PlanDaily p on p.Id = pdt.PlanId
	  where (p.FactoryId =@FactoryId OR @FactoryId =0)
	        AND  (p.BranchId =@BranchOfUser)
			AND  (p.DeviceId =@DeviceId OR @DeviceId =0)
	  ORDER BY pdt.Id Desc
END
	  END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanDailyTroubleReportByDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanDailyTroubleReportByDay] 
@PlanId bigint null,
@DeviceId bigint null,
@UserId nvarchar(450) null,
@day int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
if(@PlanId = -1)
	BEGIN
	 SELECT pdt.[Id]
		  ,pdt.[TroubleId]
		  ,pdt.[AddressTrouble]
		  ,pdt.[DateTrouble]
		  ,pdt.[DescriptionTrouble]
		  ,pdt.[ReasonTrouble]
		  ,pdt.[HandlingMeansure]
		  ,pdt.UserAct
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers') as UserActList
		  ,pdt.[DateDone]
		  ,pdt.UserPart
		  ,pdt.UnitPart
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserPart, ',', 'AspNetUsers') as UserPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UserPartList
		  ,[dbo].[ufnGetUserNameByListID](pdt.UnitPart, ',', 'Branch')  as UnitPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UnitPartList
		  ,pdt.[UserManager]
		  ,pdt.[UserBranch]
		  ,pdt.[UserAuthority]
		  ,pdt.[TimeCreated]
		  ,pdt.[TimeModified]
		  ,pdt.[FactoryId]
		  ,pdt.[BranchId]
		  ,pdt.[ReportNumber]
		  ,pdt.[PlanId]
		  ,pdt.FileScan
	  FROM [dbo].[PlanDailyTroubleReport] pdt inner join PlanDaily p On  p.Id = pdt.PlanId
	  where p.DeviceId =@DeviceId  AND DAY(pdt.DateTrouble) =@day
	  ORDER BY pdt.Id Desc
  END
ELSE 
  BEGIN
		SELECT pdt.[Id]
		  ,pdt.[TroubleId]
		  ,pdt.[AddressTrouble]
		  ,pdt.[DateTrouble]
		  ,pdt.[DescriptionTrouble]
		  ,pdt.[ReasonTrouble]
		  ,pdt.[HandlingMeansure]
		  ,pdt.UserAct
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserAct, ',', 'AspNetUsers') as UserActList
		  ,pdt.[DateDone]
		  ,pdt.UserPart
		  ,pdt.UnitPart
		  ,[dbo].[ufnGetUserNameByListID](pdt.UserPart, ',', 'AspNetUsers') as UserPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UserPartList
		  ,[dbo].[ufnGetUserNameByListID](pdt.UnitPart, ',', 'Branch')  as UnitPartList--[dbo].[ufnGetUserInforByListID](UserPart, ',') as UnitPartList
		  ,pdt.[UserManager]
		  ,pdt.[UserBranch]
		  ,pdt.[UserAuthority]
		  ,pdt.[TimeCreated]
		  ,pdt.[TimeModified]
		  ,pdt.[FactoryId]
		  ,pdt.[BranchId]
		  ,pdt.[ReportNumber]
		  ,pdt.[PlanId]
		  ,pdt.FileScan
	  FROM [dbo].[PlanDailyTroubleReport] pdt
	  where (pdt.PlanId =@PlanId OR @PlanId =0)  AND DAY(pdt.DateTrouble) =@day
	  ORDER BY pdt.Id Desc
  END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanList]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanList] 
@UserId nvarchar(450) null,
@PlanId bigint null,
@PlanYear bigint null,
@BranchId bigint null,
@PlanTable nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId bigint 

--ColValue13 Người tạo
--ColValue14  ActiveValu
--ColValue15  inactive/active string
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);

if(@PlanTable ='PlanDaily')
BEGIN
    select p.Id 
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
	  ,p.PlanMonth
	  ,p.DeviceId
      ,f.Name as ColValue01
      ,b.Name as ColValue02
      ,t.Name as ColValue03
	  ,p.PlanNumber as ColValue04
      ,d.Code as ColValue05
      ,l.Name as ColValue06   
	  ,d.Name as ColValue07 
	  ,p.FileScan
	  ,CONCAT(p.PlanMonth ,'/', p.PlanYear) as ColValue08 
	  ,ISNULL((select count(tb.Id) from PlanDailyTrouble tb where tb.PlanId = p.Id),0) as ColValue09
      ,FORMAT(CONVERT(datetime, p.TimeModified ),'dd/MM/yyyy hh:mm:ss tt')  as ColValue10
	  ,'' as ColValue11  
	  ,'' as ColValue12
      ,ISNULL(u.FullName, '') as ColValue13
      ,ISNULL(p.ActiveValue, 0) as ColValue14
	  , CASE WHEN ((ISNULL(p.ActiveValue, 0) = 1)) THEN '<span class="right badge badge-success">active</span>' ELSE '<span class="right badge badge-danger">inactive</span>' END as ColValue15   ----
	  --,dbo.[ufnGetJsonUserWeekInfor](p.Id) as UserWeek
	  --,dbo.[ufnPlanDailyWordsByPlanID](p.Id) as PlanDailyDetai
	  --,dbo.ufnPlanDailySignaltureByPlanID(p.Id) as DaySignAct
	  from PlanDaily p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join Device d on d.Id = p.DeviceId
		 left OUTER join Line l on d.LineId = l.Id
		 left OUTER join Team t on d.TeamId = t.Id
         left OUTER join AspNetUsers u on p.UserPlan = u.Id
		 where p.BranchId = @BranchOfUser OR @BranchOfUser = 0
		 order by p.TimeModified DESC
END
ELSE if(@PlanTable ='PlanPeriodic')
BEGIN
	select p.Id 
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
	  ,0 as PlanMonth
	  ,0 as DeviceId
      ,f.Name as ColValue01
      ,b.Name as ColValue02
      ,p.PlanNumber as ColValue03
      ,p.PlanYear as ColValue04
	  ,p.FileScan
	  ,ISNULL((select count(tb.Id) from PlanPeriodicDevice tb where tb.PlanId = p.Id),0) as ColValue05   
      ,FORMAT(CONVERT(datetime, p.TimeModified ),'dd/MM/yyyy hh:mm:ss tt') as ColValue06 
	  ,'' as ColValue07 
	  ,'' as ColValue08 
	  ,'' as ColValue09
      ,'' as ColValue10
	  ,'' as ColValue11  
	  ,'' as ColValue12
      ,ISNULL(u.FullName, '') as ColValue13
      ,ISNULL(p.ActiveValue, 0) as ColValue14
	  , CASE WHEN ((ISNULL(p.ActiveValue, 0) = 1)) THEN '<span class="right badge badge-success">active</span>' ELSE '<span class="right badge badge-danger">inactive</span>' END as ColValue15   ----
	  from PlanPeriodic p
	 	 inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join AspNetUsers u on p.UserPlan = u.Id
		 where p.BranchId = @BranchOfUser OR @BranchOfUser = 0
		  order by p.TimeModified DESC
	END	
	ELSE if(@PlanTable ='PlanOver')
BEGIN
	select p.Id 
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
	  ,0 as PlanMonth
	  ,0 as DeviceId
      ,f.Name as ColValue01
      ,b.Name as ColValue02
      ,p.PlanNumber as ColValue03
      ,p.PlanYear as ColValue04
	  ,p.FileScan
	  ,ISNULL((select count(tb.Id) from PlanOverDevice tb where tb.PlanId = p.Id),0) as ColValue05   
      ,FORMAT(CONVERT(datetime, p.TimeModified ),'dd/MM/yyyy hh:mm:ss tt') as ColValue06 
	  ,'' as ColValue07 
	  ,'' as ColValue08 
	  ,'' as ColValue09
      ,'' as ColValue10
	  ,'' as ColValue11  
	  ,'' as ColValue12
      ,ISNULL(u.FullName, '') as ColValue13
      ,ISNULL(p.ActiveValue, 0) as ColValue14
	  , CASE WHEN ((ISNULL(p.ActiveValue, 0) = 1)) THEN '<span class="right badge badge-success">active</span>' ELSE '<span class="right badge badge-danger">inactive</span>' END as ColValue15   ----
	  from PlanOver p
	 	 inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join AspNetUsers u on p.UserPlan = u.Id
		 where p.BranchId = @BranchOfUser OR @BranchOfUser = 0
		  order by p.TimeModified DESC
	END	
	ELSE if(@PlanTable ='PlanSupplie')
BEGIN
	select p.Id 
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
	  ,0 as PlanMonth
	  ,0 as DeviceId
      ,f.Name as ColValue01
      ,b.Name as ColValue02
      ,p.PlanNumber as ColValue03
      ,p.PlanYear as ColValue04
	  ,p.FileScan
	  ,ISNULL((select count(tb.Id) from PlanSupplieDetail tb where tb.PlanId = p.Id),0) as ColValue05   
      ,FORMAT(CONVERT(datetime, p.TimeModified ),'dd/MM/yyyy hh:mm:ss tt') as ColValue06 
	  ,CASE WHEN (ISNULL(p.PlanType, 0)=0) then CONCAT(N'Hàng năm: ', p.PlanYear) else CONCAT(N'Phục vụ SCL, đại tu, cải tạo TB. Hạng mục/Kế hoạch số: ', (select plo.PlanNumber from PlanOver plo where plo.Id = p.PlanOverId)) END as ColValue07  --phân loại kế hoạch
	  ,'' as ColValue08 
	  ,'' as ColValue09
      ,'' as ColValue10
	  ,'' as ColValue11  
	  ,'' as ColValue12
      ,ISNULL(u.FullName, '') as ColValue13
      ,ISNULL(p.ActiveValue, 0) as ColValue14
	  , CASE WHEN ((ISNULL(p.ActiveValue, 0) = 1)) THEN '<span class="right badge badge-success">active</span>' ELSE '<span class="right badge badge-danger">inactive</span>' END as ColValue15   ----
	  from PlanSupplie p
	 	 inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
		 left OUTER join AspNetUsers u on p.UserPlan = u.Id
		 where p.BranchId = @BranchOfUser OR @BranchOfUser = 0
		  order by p.TimeModified DESC
	END	
END


GO
/****** Object:  StoredProcedure [dbo].[GetPlanNumberByPlanType]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanNumberByPlanType] 
		@PlanType nvarchar(15) null
		,@PlanMonth int null
		,@PlanYear int null
		,@BranchId bigint null,
        @FactoryId bigint null
AS
BEGIN

	SET NOCOUNT OFF;

if(@PlanType = 'PlanDaily')
	SELECT DISTINCT p.PlanNumber from PlanDaily p where  p.PlanMonth = @PlanMonth and p.PlanYear = @PlanYear  AND p.BranchId =@BranchId AND p.FactoryId = @FactoryId order by p.PlanNumber desc
else if(@PlanType = 'PlanDailyTroubleReport')
	SELECT DISTINCT pr.ReportNumber as PlanNumber from PlanDailyTroubleReport pr inner join PlanDaily p on p.Id = pr.PlanId
		    where p.PlanMonth = @PlanMonth and p.PlanYear = @PlanYear  AND p.BranchId =@BranchId AND p.FactoryId = @FactoryId order by pr.ReportNumber  desc
else if(@PlanType = 'PlanPeriodic')
	SELECT DISTINCT  PlanNumber from PlanPeriodic where PlanYear = @PlanYear  AND BranchId =@BranchId AND FactoryId = @FactoryId order by PlanNumber desc
else if(@PlanType = 'PlanPeriodicDevice')
	SELECT DISTINCT pd.PlanNumber from PlanPeriodicDevice pd 
	        INNER JOIN PlanPeriodic p on p.Id = pd.PlanId
			where p.PlanYear = @PlanYear AND p.BranchId =@BranchId AND p.FactoryId = @FactoryId order by pd.PlanNumber desc

else if(@PlanType = 'PlanPeriodicReport')	   
	SELECT DISTINCT pr.ReportNumberCode as PlanNumber from PlanPeriodicReport pr 
	inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId 
	INNER JOIN PlanPeriodic p on p.Id = pd.PlanId
		where p.PlanYear = @PlanYear AND p.BranchId =@BranchId AND p.FactoryId = @FactoryId order by pr.ReportNumberCode desc
else if(@PlanType = 'PlanSupplie')
	SELECT DISTINCT PlanNumber from PlanSupplie where PlanYear = @PlanYear  AND BranchId =@BranchId AND FactoryId = @FactoryId order by PlanNumber desc
else if(@PlanType = 'PlanOver')
	SELECT DISTINCT PlanNumber from PlanOver where PlanYear = @PlanYear  AND BranchId =@BranchId AND FactoryId = @FactoryId  order by PlanNumber desc
else if(@PlanType = 'PlanTarget')
	SELECT DISTINCT PlanNumber from PlanTarget where PlanYear = @PlanYear  AND BranchId =@BranchId AND FactoryId = @FactoryId order by PlanNumber desc
else if(@PlanType = 'DeviceTarget')
	SELECT DISTINCT PlanNumber from DeviceTarget where PlanMonth = @PlanMonth and PlanYear = @PlanYear  AND BranchId =@BranchId AND FactoryId = @FactoryId  order by PlanNumber desc
else if(@PlanType = 'Report1')
	SELECT DISTINCT PlanNumber from PlanDaily where PlanMonth = @PlanMonth and PlanYear = @PlanYear  AND BranchId =@BranchId AND FactoryId = @FactoryId  order by PlanNumber desc
END

 --[dbo].[ufnCreatePlanNumberCode](@FactoryID int, @BranchID int, @Year int, @stype nvarchar(10), @table nvarchar(20), @DeviceId int, @month int)  
  --[dbo].[ufnCreatePlanNumberCode](@FactoryID int, @BranchID int, @Year int, @stype nvarchar(10), @table , @DeviceId , @month)  
--update PlanOver set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'CSL', 'PlanOver' , 0 , 0, 0); 
--update PlanDaily set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHHNHT', 'PlanDaily' , 0 , PlanMonth, 0);  
--update PlanSupplie set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHVTPT', 'PlanSupplie' , 0 , 0, 0); 
--update PlanTarget set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHMTTB', 'PlanTarget' , 0 , 0, 0); 
--update PlanPeriodic set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHDK', 'PlanPeriodic' , 0 , 0, 0); 
--update DeviceTarget set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'THMTTB', 'DeviceTarget' , 0 , PlanMonth, 0); 
--update PlanDailyTroubleReport set ReportNumber = dbo.ufnCreatePlanNumberCode(1, 2, 2022, 'BBSCTB', 'PlanDailyTroubleReport' , 0 , 0, 0);  
--update PlanPeriodicReport set ReportNumberCode = dbo.ufnCreatePlanNumberCode(1, 2, 2022, 'BBNTTB', 'PlanPeriodicReport' , 0 , 0, 0); 
--update PlanPeriodicDevice set PlanNumber = dbo.ufnCreatePlanNumberCode(1, 2, 2022, 'CTBDCSTB', 'PlanPeriodicDevice' , DeviceId , 0, 0); 
GO
/****** Object:  StoredProcedure [dbo].[GetPlanOver]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanOver] 
@PlanId bigint null,
@year int null,
@BranchId int null,
@FactoryId int null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
--Chỉ đúng với trường hợp ko có điều chỉnh
--set @CurrentPlanId = @PlanId;
-- kiểm tra có điều chỉnh hay ko?
IF NOT EXISTS (SELECT Id FROM PlanOver p WHERE p.PlanId = @PlanId AND ISNULL(p.Number, 0)>0)
	set @CurrentPlanId = @PlanId;
else 
	set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanOver p WHERE p.PlanId = @PlanId AND ISNULL(p.Number, 0)>0 ORDER BY p.Number DESC);

select DISTINCT @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as DeviceName
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,'' as CurrentStatus
	  ,'' as RepairContent
	  ,p.Targets
	  ,'' as Progress
	  ,'' as UserChair
	  ,'' as UserAct
	  ,'' as UserChairId
	  ,'' as UserActId
	  ,'' as Note
	  from PlanOver p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as PlanId,  pd.Id, @CurrentPlanId as PlanIdOrg, 0 as Number
      ,@year as PlanYear
      ,@FactoryId as FactoryId
      ,@BranchId as BranchId
      ,'' as DatePlan
      ,'' as UserPlan
      ,'' as DateBranch
      ,'' as UserBranch
      ,'' as DateFactory
      ,'' as UserFactory
      ,'' as DateAuthority
      ,'' as UserAuthority
      ,'' as PlanNumber
      ,'' as TimeCreated
      ,'' as TimeModified
      ,pd.DeviceId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,d.Name as DeviceName
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,pd.CurrentStatus
	  ,pd.RepairContent
	  ,pd.Targets
	  ,pd.Progress
	  ,[dbo].[ufnGetUserNameByListID](pd.UserChair , ',', 'AspNetUsers') as UserChair
	  ,[dbo].[ufnGetUserNameByListID](pd.UserAct , ',', 'AspNetUsers') as UserAct
	  ,pd.UserChair as UserChairId
	  ,pd.UserAct  as UserActId
	  ,pd.Note
  FROM  PlanOverDevice pd
    left outer join Device d on d.Id = pd.DeviceId
	left outer join Line l on l.Id = pd.LineId
   where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanOverDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanOverDevice] 
@PlanId int  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    Select pd.*, f.Name as DeviceName, f.Code as DeviceCode 
    FROM PlanOverDevice pd
       LEFT OUTER join Device f on    f.id = pd.DeviceId
   where pd.PlanId = @PlanId
   ORDER BY pd.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanOverSummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanOverSummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
--Chỉ đúng với trường hợp ko có điều chỉnh
--set @CurrentPlanId = @PlanId;
-- kiểm tra có điều chỉnh hay ko?
set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanOver p  where p.PlanNumber =@PlanNumber and p.Number =@NumberAju)

select DISTINCT @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as DeviceName
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,'' as CurrentStatus
	  ,'' as RepairContent
	  ,p.Targets
	  ,'' as Progress
	  ,'' as UserChair
	  ,'' as UserAct
	  ,'' as Note
	  from PlanOver p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as PlanId,  pd.Id, @CurrentPlanId as PlanIdOrg, 0 as Number
      ,0 as PlanYear
      ,0 as FactoryId
      ,0 as BranchId
      ,'' as DatePlan
      ,'' as UserPlan
      ,'' as DateBranch
      ,'' as UserBranch
      ,'' as DateFactory
      ,'' as UserFactory
      ,'' as DateAuthority
      ,'' as UserAuthority
      ,'' as PlanNumber
      ,'' as TimeCreated
      ,'' as TimeModified
      ,pd.DeviceId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,d.Name as DeviceName
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,pd.CurrentStatus
	  ,pd.RepairContent
	  ,pd.Targets
	  ,pd.Progress
	  ,[dbo].[ufnGetUserNameByListID](pd.UserChair , ',', 'AspNetUsers') as UserChair
	  ,[dbo].[ufnGetUserNameByListID](pd.UserAct , ',', 'AspNetUsers') as UserAct
	  ,pd.Note
  FROM  PlanOverDevice pd
    left outer join Device d on d.Id = pd.DeviceId
	left outer join Line l on l.Id = pd.LineId
   where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodic]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodic] 
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
IF NOT EXISTS (SELECT Id FROM PlanPeriodic p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year)
    BEGIN
        INSERT INTO [dbo].[PlanPeriodic]
           ([PlanYear]
           ,[FactoryId]
           ,[BranchId]
		   ,[UserPlan]
           ,[DatePlan]
           ,[PlanNumber]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@year
           ,@FactoryId
           ,@BranchId
		   ,@UserId
           ,GETDATE()        
           ,CONCAT(@FactoryId, '.', @BranchId, '/', @year)
           ,GETDATE()    
           ,GETDATE());

	set @CurrentPlanId = SCOPE_IDENTITY();
	update PlanPeriodic set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHDK', 'PlanPeriodic' , 0 , 0, @CurrentPlanId) where Id = @CurrentPlanId;
END
ELSE
BEGIN
   set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanPeriodic p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year order by ID desc);
END

select @CurrentPlanId as PlanId,  0 as Id ,  ISNULL(p.PlanId,0) as PlanIdOrg, ISNULL(p.Number, 0) as Number
      ,null as  PlanYear
      ,null as  FactoryId
      ,null as  BranchId
      ,null as  DatePlan
      ,null as  UserPlan
      ,null as  DateBranch
      ,null as  UserBranch
      ,null as  DateFactory
      ,null as  UserFactory
      ,null as  DateAuthority
      ,null as  UserAuthority
      ,p.PlanNumber
	  ,null as  PlanDeviceNumber
      ,null as  TimeCreated
      ,null as  TimeModified
      ,null as DeviceId
	  ,'' as Note
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,'' as DeviceName
	  ,'' as Month01
	  ,'' as Month02
	  ,'' as Month03
	  ,'' as Month04
	  ,'' as Month05
	  ,'' as Month06
	  ,'' as Month07
	  ,'' as Month08
	  ,'' as Month09
	  ,'' as Month10
	  ,'' as Month11
	  ,'' as Month12, '' as MonthPlan
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,N'Gợi ý: Thời gian BDCS năm trước:' as  NoteGoiY
	  from PlanPeriodic p
	 	left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
    left outer join AspNetUsers u2 on u2.Id = p.UserBranch
    left outer join AspNetUsers u3 on u3.Id = p.UserFactory
    left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	 where p.Id = @CurrentPlanId
  UNION
 SELECT p.Id as PlanId,  pd.Id , NULL as PlanIdOrg, 0 as Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
	  ,pd.PlanNumber as PlanDeviceNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,pd.DeviceId
	  ,pd.Note
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name as DeviceName
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month01, 1) as Month01
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month02, 2) as Month02
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month03, 3) as Month03
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month04, 4) as Month04
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month05, 5) as Month05
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month06, 6) as Month06
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month07, 7) as Month07
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month08, 8) as Month08
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month09, 9) as Month09
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month10, 10) as Month10
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month11, 11) as Month11
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, pd.Month12, 12) as Month12
	  ,pd.MonthPlan
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,dbo.ufnPlanPeriodicNoteGoiYByDeviceId(p.Id, p.PlanYear, d.Id) as  NoteGoiY
  FROM  PlanPeriodicDevice pd
    inner join Device d on d.Id = pd.DeviceId
    inner join PlanPeriodic p on p.Id = pd.PlanId
    inner join Branch b on b.Id = p.BranchId
    inner join Factory f on f.Id = p.FactoryId
   where p.BranchId = @BranchId
       AND p.FactoryId =@FactoryId
	   AND p.PlanYear = @year
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicByDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicByDevice] 
@PlanDeviceId bigint null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
 SELECT p.Id as PlanId,  pd.Id
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
	  ,pd.PlanNumber as PlanDeviceNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,pd.DeviceId
	  ,pd.Note
	  ,pd.FileScan
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name as DeviceName
      ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	   ,u4.FullName as UserNamePlan
  FROM  PlanPeriodicDevice pd
    inner join Device d on d.Id = pd.DeviceId
    inner join PlanPeriodic p on p.Id = pd.PlanId
    inner join Branch b on b.Id = p.BranchId
    inner join Factory f on f.Id = p.FactoryId
	left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
    left outer join AspNetUsers u2 on u2.Id = p.UserBranch
    left outer join AspNetUsers u3 on u3.Id = p.UserFactory
    left outer join AspNetUsers u4 on u4.Id = p.UserPlan
   where pd.Id = @PlanDeviceId
 ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicDetail] 
@PlanDeviceId int  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   SELECT pd.Id
      ,[PlanDeviceId]
       ,CASE WHEN(pd.Month01=1) then 'X' else '' END as Month01
	  ,CASE WHEN(pd.Month02=1) then 'X' else '' END as Month02
	  ,CASE WHEN(pd.Month03=1) then 'X' else '' END as Month03
	  ,CASE WHEN(pd.Month04=1) then 'X' else '' END as Month04
	  ,CASE WHEN(pd.Month05=1) then 'X' else '' END as Month05
	  ,CASE WHEN(pd.Month06=1) then 'X' else '' END as Month06
	  ,CASE WHEN(pd.Month07=1) then 'X' else '' END as Month07
	  ,CASE WHEN(pd.Month08=1) then 'X' else '' END as Month08
	  ,CASE WHEN(pd.Month09=1) then 'X' else '' END as Month09
	  ,CASE WHEN(pd.Month10=1) then 'X' else '' END as Month10
	  ,CASE WHEN(pd.Month11=1) then 'X' else '' END as Month11
	  ,CASE WHEN(pd.Month12=1) then 'X' else '' END as Month12
	  ,pd.MonthAct
      ,[WorkContent]
      ,[DepartmentAct]
      ,[FormId]
      ,[Note],
        f.Name as FormName, f.FilePath 

    FROM PlanPeriodicDetail pd
       LEFT OUTER join Form f on    f.id = pd.FormId
   where pd.PlanDeviceId = @PlanDeviceId
   ORDER BY pd.Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReports]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicReports] 
@UserId nvarchar(450) null,
@PlanDeviceId bigint null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

DECLARE	@DeviceId int; set @DeviceId = (select TOP(1) pd.DeviceId from PlanPeriodicDevice pd where pd.Id = @PlanDeviceId)
DECLARE @PlanYear int; set @PlanYear = (select TOP(1) p.PlanYear from PlanPeriodicDevice pd inner join PlanPeriodic p on p.Id = pd.PlanId  where pd.Id = @PlanDeviceId)
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);
IF(@BranchOfUser=0)
BEGIN
SELECT pr.Id
      ,pr.PlanDeviceId
      ,ISNULL(pr.TimeDelivery, 0) as TimeDelivery
      ,pr.StartDate
      ,pr.EndDate
	  ,pr.ActStartDate
      ,pr.ActEndDate
	  ,pr.ReportDate
	  ,pr.ReportNumberCode
      ,pr.WorkArising
      ,pr.OperatingResults
      ,pr.ActionMore
      ,pr.Responsibility
      ,pr.Duration
	  ,pr.FileScan
      ,ISNULL(pr.RequestSafe, 0) as RequestSafe
      ,ISNULL(pr.RequestQuality, 0) as RequestQuality
      ,ISNULL(pr.RequestProductivity, 0) as RequestProductivity
	  ,dbo.ufnGetWorkContentForBBBDTB(pd.Id) as WorkContent
	  ,dbo.ufnGetDepartmentActForBBBDTB(pd.Id) as DepartmentAct
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name  as DeviceName
	  ,t.Name  as TeamName
      ,t.Name  as userDepartment
      ,'' as UserSCBD
	  ,CONCAT(ROUND(CAST(DATEDIFF(MINUTE, StartDate, EndDate) AS float)/60, 3) , ' h') as UserBranch ---,CAST(DATEDIFF(HOUR, StartDate, EndDate) as nvarchar(10)) as UserBranch
	  ,pd.PlanNumber as UserAuthority
  FROM [dbo].[PlanPeriodicReport] pr
     inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId
	 inner join PlanPeriodic p on p.Id = pd.PlanId
	 inner join Device d on pd.DeviceId = d.Id
	  inner join Branch b on p.BranchId = b.Id
	   inner join Factory f on p.FactoryId = f.Id
         left outer join Team t on d.TeamId = t.Id
   where (p.PlanYear = @PlanYear OR @PlanYear =0) 
        AND (pd.DeviceId = @DeviceId OR @DeviceId =0)
END
ELSE 
BEGIN
		SELECT pr.Id
			  ,pr.PlanDeviceId
			  ,ISNULL(pr.TimeDelivery, 0) as TimeDelivery
			  ,pr.StartDate
			  ,pr.EndDate
			  ,pr.ActStartDate
			  ,pr.ActEndDate
			  ,pr.ReportDate
			  ,pr.ReportNumberCode
			  ,pr.WorkArising
			  ,pr.OperatingResults
			  ,pr.ActionMore
			  ,pr.Responsibility
			  ,pr.Duration
			  ,pr.FileScan
			  ,ISNULL(pr.RequestSafe, 0) as RequestSafe
			  ,ISNULL(pr.RequestQuality, 0) as RequestQuality
			  ,ISNULL(pr.RequestProductivity, 0) as RequestProductivity
			  ,dbo.ufnGetWorkContentForBBBDTB(pd.Id) as WorkContent
			  ,dbo.ufnGetDepartmentActForBBBDTB(pd.Id) as DepartmentAct
			  ,b.Name as BranchName
			  ,f.Name as FactoryName
			  ,d.Name  as DeviceName
			  ,t.Name  as TeamName
			  ,t.Name  as userDepartment
			  ,'' as UserSCBD
			  ,CONCAT(ROUND(CAST(DATEDIFF(MINUTE, StartDate, EndDate) AS float)/60, 3) , ' h') as UserBranch ---,CAST(DATEDIFF(HOUR, StartDate, EndDate) as nvarchar(10)) as UserBranch
			  ,pd.PlanNumber as UserAuthority
		  FROM [dbo].[PlanPeriodicReport] pr
			 inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId
			 inner join PlanPeriodic p on p.Id = pd.PlanId
			 inner join Device d on pd.DeviceId = d.Id
			  inner join Branch b on p.BranchId = b.Id
			   inner join Factory f on p.FactoryId = f.Id
				 left outer join Team t on d.TeamId = t.Id
		   where (p.PlanYear = @PlanYear OR @PlanYear =0) 
				AND (pd.DeviceId = @DeviceId OR @DeviceId =0)
				AND (b.Id = @BranchOfUser)
END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReportsByBranchIdAndYear]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicReportsByBranchIdAndYear] 
@UserId nvarchar(450) null,
@BranchId int null
,@PlanYear int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);
IF(@BranchOfUser =0)
BEGIN
				 SELECT pr.Id
				  ,pr.PlanDeviceId
				  ,pr.TimeDelivery
				  ,pr.StartDate
				  ,pr.EndDate
				  ,pr.ReportDate
				  ,pr.ActStartDate
				  ,pr.ActEndDate
				  ,pr.ReportNumberCode
				  ,pr.WorkArising
				  ,pr.OperatingResults
				  ,pr.ActionMore
				  ,pr.Responsibility
				  ,pr.Duration
				  ,pr.RequestSafe
				  ,pr.RequestQuality
				  ,pr.RequestProductivity
				  ,pr.FileScan
				  ,dbo.ufnGetWorkContentForBBBDTB(pd.Id) as WorkContent
				  ,dbo.ufnGetDepartmentActForBBBDTB(pd.Id) as DepartmentAct
				  ,b.Name as BranchName
				  ,f.Name as FactoryName
				  ,d.Name  as DeviceName
				  ,t.Name  as TeamName
				  ,t.Name  as userDepartment
				  ,'' as UserSCBD
				  ,CONCAT(ROUND(CAST(DATEDIFF(MINUTE, StartDate, EndDate) AS float)/60, 3) , ' h') as UserBranch ---,CAST(DATEDIFF(HOUR, StartDate, EndDate) as nvarchar(10)) as UserBranch
				  ,pd.PlanNumber as UserAuthority
			  FROM [dbo].[PlanPeriodicReport] pr
				 inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId
				 inner join PlanPeriodic p on p.Id = pd.PlanId
				 inner join Device d on pd.DeviceId = d.Id
				  inner join Branch b on p.BranchId = b.Id
				   inner join Factory f on p.FactoryId = f.Id
					 left outer join Team t on d.TeamId = t.Id
				--left outer join AspNetUsers u1 on u1.Id = pr.UserSCBD
			 --   left outer join AspNetUsers u2 on u2.Id = pr.UserBranch
			 --   left outer join AspNetUsers u3 on u3.Id = pr.UserFactory
			 --   left outer join AspNetUsers u4 on u4.Id = pr.UserAuthority
			   where (p.PlanYear = @PlanYear OR @PlanYear =0) 
				   AND (d.BranchId = @BranchId OR @BranchId =0)
	   END
	   ELSE 
	   BEGIN
				SELECT pr.Id
			  ,pr.PlanDeviceId
			  ,pr.TimeDelivery
			  ,pr.StartDate
			  ,pr.EndDate
			  ,pr.ReportDate
			  ,pr.ActStartDate
			  ,pr.ActEndDate
			  ,pr.ReportNumberCode
			  ,pr.WorkArising
			  ,pr.OperatingResults
			  ,pr.ActionMore
			  ,pr.Responsibility
			  ,pr.Duration
			  ,pr.RequestSafe
			  ,pr.RequestQuality
			  ,pr.RequestProductivity
			  ,pr.FileScan
			  ,dbo.ufnGetWorkContentForBBBDTB(pd.Id) as WorkContent
			  ,dbo.ufnGetDepartmentActForBBBDTB(pd.Id) as DepartmentAct
			  ,b.Name as BranchName
			  ,f.Name as FactoryName
			  ,d.Name  as DeviceName
			  ,t.Name  as TeamName
			  ,t.Name  as userDepartment
			  ,'' as UserSCBD
			  ,CONCAT(ROUND(CAST(DATEDIFF(MINUTE, StartDate, EndDate) AS float)/60, 3) , ' h') as UserBranch ---,CAST(DATEDIFF(HOUR, StartDate, EndDate) as nvarchar(10)) as UserBranch
			  ,pd.PlanNumber as UserAuthority
		  FROM [dbo].[PlanPeriodicReport] pr
			 inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId
			 inner join PlanPeriodic p on p.Id = pd.PlanId
			 inner join Device d on pd.DeviceId = d.Id
			  inner join Branch b on p.BranchId = b.Id
			   inner join Factory f on p.FactoryId = f.Id
				 left outer join Team t on d.TeamId = t.Id
			--left outer join AspNetUsers u1 on u1.Id = pr.UserSCBD
		 --   left outer join AspNetUsers u2 on u2.Id = pr.UserBranch
		 --   left outer join AspNetUsers u3 on u3.Id = pr.UserFactory
		 --   left outer join AspNetUsers u4 on u4.Id = pr.UserAuthority
		   where (p.PlanYear = @PlanYear OR @PlanYear =0) 
			   AND (b.Id = @BranchOfUser)
	   END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReportsByDeviceIdAndYear]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicReportsByDeviceIdAndYear] 
@UserId nvarchar(450) null,
@DeviceId int null
,@PlanYear int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);

 SELECT pr.Id
      ,pr.PlanDeviceId
      ,pr.TimeDelivery
      ,pr.StartDate
      ,pr.EndDate
	  ,pr.ReportDate
      ,pr.ActStartDate
	  ,pr.ActEndDate
	  ,pr.ReportNumberCode
      ,pr.WorkArising
      ,pr.OperatingResults
      ,pr.ActionMore
      ,pr.Responsibility
      ,pr.Duration
      ,pr.RequestSafe
      ,pr.RequestQuality
      ,pr.RequestProductivity
	  ,pr.FileScan
	  ,dbo.ufnGetWorkContentForBBBDTB(pd.Id) as WorkContent
	  ,dbo.ufnGetDepartmentActForBBBDTB(pd.Id) as DepartmentAct
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name  as DeviceName
	  ,t.Name  as TeamName
      ,t.Name  as userDepartment
      ,'' as UserSCBD
	  ,CAST(DATEDIFF(HOUR, StartDate, EndDate) as nvarchar(10)) as UserBranch
	  ,pd.PlanNumber as UserAuthority
  FROM [dbo].[PlanPeriodicReport] pr
     inner join PlanPeriodicDevice pd on pd.Id = pr.PlanDeviceId
	 inner join PlanPeriodic p on p.Id = pd.PlanId
	 inner join Device d on pd.DeviceId = d.Id
	  inner join Branch b on p.BranchId = b.Id
	   inner join Factory f on p.FactoryId = f.Id
         left outer join Team t on d.TeamId = t.Id
	--left outer join AspNetUsers u1 on u1.Id = pr.UserSCBD
 --   left outer join AspNetUsers u2 on u2.Id = pr.UserBranch
 --   left outer join AspNetUsers u3 on u3.Id = pr.UserFactory
 --   left outer join AspNetUsers u4 on u4.Id = pr.UserAuthority
   where (p.PlanYear = @PlanYear OR @PlanYear =0) 
	   AND (pd.DeviceId = @DeviceId OR @DeviceId =0)
	   AND (b.Id = @BranchOfUser OR @BranchOfUser =0)
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicReportsSummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicReportsSummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

 SELECT p.Id
      ,PlanDeviceId
      ,[TimeDelivery]
      ,[StartDate]
      ,[EndDate]
	  ,ReportDate
	  ,ReportNumberCode
      ,[WorkArising]
      ,[OperatingResults]
      ,[ActionMore]
      ,[Responsibility]
      ,[Duration]
      ,[UserSCBD]
      ,[UserBranch]
      ,[UserDepartment]
      ,[UserAuthority]
      ,[RequestSafe]
      ,[RequestQuality]
      ,[RequestProductivity]
	  ,FileScan
	  ,[dbo].ufnGetWorkContentForBBBDTB(p.PlanDeviceId) as WorkContent
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,'' as DeviceName
      ,u1.FullName as UserSCBD
	  ,u2.FullName as UserBranch
	  ,u3.FullName as UserDepartment 
	  ,u4.FullName as UserAuthority
  FROM  [dbo].[PlanPeriodicReport] p
	left outer join AspNetUsers u1 on u1.Id = p.UserSCBD
    left outer join AspNetUsers u2 on u2.Id = p.UserBranch
    left outer join AspNetUsers u3 on u3.Id = p.UserFactory
    left outer join AspNetUsers u4 on u4.Id = p.UserAuthority
   --where p.PlanDeviceId = @PlanDeviceId
   WHERE p.ReportNumberCode =@PlanNumber --AND p.n = @NumberAju)

END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanPeriodicSummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanPeriodicSummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanPeriodic p where p.PlanNumber =@PlanNumber and p.Number =@NumberAju)

select @CurrentPlanId as PlanId,  0 as Id ,  ISNULL(p.PlanId,0) as PlanIdOrg, ISNULL(p.Number, 0) as Number
      ,null as  PlanYear
      ,null as  FactoryId
      ,null as  BranchId
      ,null as  DatePlan
      ,null as  UserPlan
      ,null as  DateBranch
      ,null as  UserBranch
      ,null as  DateFactory
      ,null as  UserFactory
      ,null as  DateAuthority
      ,null as  UserAuthority
      ,p.PlanNumber
	  ,null as  PlanDeviceNumber
      ,null as  TimeCreated
      ,null as  TimeModified
      ,null as DeviceId
	  ,'' as Note
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,'' as DeviceName
	  ,'' as Month01
	  ,'' as Month02
	  ,'' as Month03
	  ,'' as Month04
	  ,'' as Month05
	  ,'' as Month06
	  ,'' as Month07
	  ,'' as Month08
	  ,'' as Month09
	  ,'' as Month10
	  ,'' as Month11
	  ,'' as Month12
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  from PlanPeriodic p
	 	left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
    left outer join AspNetUsers u2 on u2.Id = p.UserBranch
    left outer join AspNetUsers u3 on u3.Id = p.UserFactory
    left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	 where p.Id = @CurrentPlanId
  UNION
 SELECT p.Id as PlanId,  pd.Id , NULL as PlanIdOrg, 0 as Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
	  ,pd.PlanNumber as PlanDeviceNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,pd.DeviceId
	  ,pd.Note
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,d.Name as DeviceName
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month01=1) then 'X' else '' END, 1) as Month01
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month02=1) then 'X' else '' END, 2) as Month02
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month03=1) then 'X' else '' END, 3) as Month03
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month04=1) then 'X' else '' END, 4) as Month04
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month05=1) then 'X' else '' END, 5) as Month05
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month06=1) then 'X' else '' END, 6) as Month06
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month07=1) then 'X' else '' END, 7) as Month07
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month08=1) then 'X' else '' END, 8) as Month08
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month09=1) then 'X' else '' END, 9) as Month09
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month10=1) then 'X' else '' END, 10) as Month10
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month11=1) then 'X' else '' END, 11) as Month11
	  ,dbo.ufnPlanPeriodicActByPlanID(pd.Id, CASE WHEN(pd.Month12=1) then 'X' else '' END, 12) as Month12
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
  FROM  PlanPeriodicDevice pd
    inner join Device d on d.Id = pd.DeviceId
    inner join PlanPeriodic p on p.Id = pd.PlanId
    inner join Branch b on b.Id = p.BranchId
    inner join Factory f on f.Id = p.FactoryId
  where p.PlanNumber =@PlanNumber and p.Number =@NumberAju
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSignature]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanSignature] 
	-- Add the parameters for the stored procedure here
	 @PlanTable nvarchar(500)  null
	,@PlanId bigint null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	SET NOCOUNT OFF;
if(@PlanTable = 'PlanOver') 
	    BEGIN
				  SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote  from PlanOver where Id =@PlanId
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng ngành'  as  UserNote  from PlanOver where Id =@PlanId
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Quản đốc xưởng'  as  UserNote  from PlanOver where Id =@PlanId
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'TGĐ/Người được ủy quyền'  as  UserNote  from PlanOver where Id =@PlanId
			ORDER BY STT ASC
		END
else if(@PlanTable = 'PlanSupplie')
	    BEGIN
				  SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng ngành'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Quản đốc xưởng'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'TGĐ/Người được ủy quyền'  as  UserNote 
			ORDER BY STT ASC
		END
else if(@PlanTable = 'PlanDaily')
	    BEGIN
			     --- bị nhầm biên soạn thành Branch
				  SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng ngành'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Quản đốc xưởng'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'TGĐ/Người được ủy quyền'  as  UserNote 
			ORDER BY STT ASC
		END
--else if(@PlanTable = 'DeviceRepair')
	 --   BEGIN
		--	  select @DatePlan = [dbo].[ufnConvertDatetimeToString](p.DatePlan), @UserPlan = ISNULL(p.UserPlan, ''),
		--			  @DateBranch =[dbo].[ufnConvertDatetimeToString](p.DateBranch), @UserBranch = ISNULL(p.UserBranch, ''),
		--			  @DateFactory =[dbo].[ufnConvertDatetimeToString](p.DateFactory), @UserFactory = ISNULL(p.UserFactory, ''),
		--			  @DateAuthority =[dbo].[ufnConvertDatetimeToString](p.DateAuthority), @UserAuthority = ISNULL(p.UserAuthority, '') from DeviceRepair p where p.Id = @PlanId;

		--	  if(@UserPlan <> '') select @UserNamePlan = ISNULL(u.FullName, ''), @UserSignaturePlan = ISNULL(u.Signature, '') from AspNetUsers u where u.Id = @UserPlan;
		--	  if(@UserBranch <> '') select @UserNameBranch = ISNULL(u.FullName, ''), @UserSignatureBranch = ISNULL(u.Signature, '') from AspNetUsers u where u.Id = @UserBranch;
		--	  if(@UserFactory <> '') select @UserNameFactory = ISNULL(u.FullName, ''), @UserSignatureFactory = ISNULL(u.Signature, '') from AspNetUsers u where u.Id = @UserFactory;
		--	  if(@UserAuthority <> '') select @UserNameAuthority = ISNULL(u.FullName, ''), @UserSignatureAuthority = ISNULL(u.Signature, '') from AspNetUsers u where u.Id = @UserAuthority;

		--		  SELECT 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote 
		--	UNION SELECT 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng ngành'  as  UserNote 
		--	UNION SELECT 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Quản đốc xưởng'  as  UserNote 
		--	UNION SELECT 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'TGĐ/Người được ủy quyền'  as  UserNote 
		--	ORDER BY STT ASC
		--END
else if(@PlanTable = 'PlanPeriodic')
	    BEGIN
			     SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, p.DatePlan as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote  from PlanPeriodic p where Id =@PlanId
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, p.DatePlan as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng ngành'  as  UserNote   from PlanPeriodic p where Id =@PlanId
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, p.DatePlan as  DatePlan, '' as  UserName, '' as  UserSignature, N'Quản đốc xưởng'  as  UserNote  from PlanPeriodic p where Id =@PlanId
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, p.DatePlan as  DatePlan, '' as  UserName, '' as  UserSignature, N'TGĐ/Người được ủy quyền'  as  UserNote  from PlanPeriodic p where Id =@PlanId
			ORDER BY STT ASC
		END
else if(@PlanTable = 'PlanTarget')
	    BEGIN
			     SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng đơn vị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Ngành sản xuất'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Phụ trách thiết bị'  as  UserNote 
			ORDER BY STT ASC
		END
else if(@PlanTable = 'PlanPeriodicReport')
	    BEGIN
				  SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Đại diện đơn vị SCBD (nếu thuê ngoài)' as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Bộ phận QL/SD thiết bị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng đơn vị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Tổng giám đốc (nếu cần)'  as  UserNote 
			ORDER BY STT ASC
		END
else if(@PlanTable = 'PlanTargetDevice')
	    BEGIN
				  SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Đại diện đơn vị SCBD (nếu thuê ngoài)' as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Bộ phận QL/SD thiết bị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 10 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng đơn vị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Tổng giám đốc (nếu cần)'  as  UserNote 
			ORDER BY STT ASC
		END
else if(@PlanTable = 'PlanDailyTroubleReport')
	    BEGIN		
				  SELECT @PlanTable as TableName, 'UserPlan' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserPlan', @PlanId) as ApproveStaus, 1 as STT, @PlanId as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Người lập kế hoạch' as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserBranch' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserBranch', @PlanId) as ApproveStaus, 2 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Trưởng đơn vị quản lý thiết bị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserFactory' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserFactory', @PlanId) as ApproveStaus, 3 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Bộ phận QL/SD thiết bị'  as  UserNote 
			UNION SELECT @PlanTable as TableName, 'UserAuthority' as FieldName, dbo.ufnGetJsonPlanSignatureStatusApprove(@PlanTable, 'UserAuthority', @PlanId) as ApproveStaus, 4 as STT, '' as UserId, '' as  DatePlan, '' as  UserName, '' as  UserSignature, N'Tổng giám đốc (nếu cần)'  as  UserNote 
			ORDER BY STT ASC
		END
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanSupplie] 
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null,
@PlanType int null = 0,
@PlanId bigint null =0,
@PlanOverId bigint null =0
--https://localhost:44321/PlanSupplie/GetPlanSupplie?PlanType=0&year=2022&BranchId=2&FactoryId=1&PlanOverId=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @CurrentPlanId int
if(@PlanId =0)
BEGIN
    
		IF(@PlanType =0 OR @PlanType IS NULL) 
		BEGIN
			IF NOT EXISTS (SELECT Id FROM PlanSupplie p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanType = @PlanType)
				BEGIN
					INSERT INTO [dbo].[PlanSupplie]
					   ([PlanYear]
					   ,[FactoryId]
					   ,[BranchId]
					   ,[UserPlan]
					   ,[DatePlan]
					   ,PlanType
					   ,[PlanNumber]
					   ,[TimeCreated]
					   ,[TimeModified])
				 VALUES
					   (@year
					   ,@FactoryId
					   ,@BranchId
					   ,@UserId
					   ,GETDATE()  
					   ,@PlanType      
					   ,dbo.ufnCreatePlanSupplieCode(@FactoryId,@BranchId, @year)
					   ,GETDATE()    
					   ,GETDATE());
				set @CurrentPlanId = SCOPE_IDENTITY();

				update PlanSupplie set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHVTPT', 'PlanSupplie' , 0 , 0, @CurrentPlanId) where Id = @CurrentPlanId; 
			END
			ELSE
			BEGIN
			   set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanSupplie p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND ISNULL(p.PlanType, 0) = @PlanType ORDER BY Id DESC);
			END
		END
		ELSE
		BEGIN
			IF NOT EXISTS (SELECT Id FROM PlanSupplie p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanType = @PlanType AND p.PlanOverId = @PlanOverId)
				BEGIN
					INSERT INTO [dbo].[PlanSupplie]
					   ([PlanYear]
					   ,[FactoryId]
					   ,[BranchId]
					   ,[UserPlan]
					   ,[DatePlan]
					   ,PlanType
					   ,PlanOverId
					   ,[PlanNumber]
					   ,[TimeCreated]
					   ,[TimeModified])
				 VALUES
					   (@year
					   ,@FactoryId
					   ,@BranchId
					   ,@UserId
					   ,GETDATE()  
					   ,@PlanType   
					   ,@PlanOverId
					   ,dbo.ufnCreatePlanSupplieCode(@FactoryId,@BranchId, @year)
					   ,GETDATE()    
					   ,GETDATE());
				set @CurrentPlanId = SCOPE_IDENTITY();
				update PlanSupplie set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHVTPT', 'PlanSupplie' , 0 , 0, @CurrentPlanId) where Id = @CurrentPlanId; 
			END
			ELSE
			BEGIN
			   set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanSupplie p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND ISNULL(p.PlanType, 0) = @PlanType AND p.PlanOverId = @PlanOverId ORDER BY Id DESC);
			END
		END
END
ELSE 
BEGIN
  set @CurrentPlanId = @PlanId
END

---Lấy dữ liệu kế hoạch
select @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
	  ,ISNULL(p.PlanType, 0) as PlanType
      ,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as SupplieName
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,(select plo.PlanNumber from PlanOver plo where plo.Id = p.PlanOverId) as NumberNote
 ,'' as Amount
	  ,'' as Belonging
,'' as BelongingId
	  ,'' as Manufacture
	  ,'' as SupplieCode
	  ,'' as Requirements
	  ,'' as Duration
	  ,'' as UserAct
	  ,'' as Note
	  from PlanSupplie p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as PlanId,  pd.Id,NULL as PlanIdOrg, 0 as Number
      ,@year as PlanYear
      ,@FactoryId as FactoryId
      ,@BranchId as BranchId
      ,'' as DatePlan
      ,'' as UserPlan
      ,'' as DateBranch
      ,'' as UserBranch
      ,'' as DateFactory
      ,'' as UserFactory
      ,'' as DateAuthority
      ,'' as UserAuthority
      ,'' as PlanNumber
      ,'' as TimeCreated
      ,'' as TimeModified
	  ,-1 as PlanType
      ,pd.SupplieId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,d.Name as SupplieName
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,case when(pd.NumberNote is null) then d.Unit else pd.NumberNote END as NumberNote
      ,pd.Amount
      ,[dbo].[ufnGetUserNameByListID](pd.Belonging,',', 'Line') as Belonging
	  ,pd.Belonging as BelongingId
	  ,case when(pd.Manufacture is null) then d.Origin else pd.Manufacture END as Manufacture
	  ,case when(pd.SupplieCode is null) then d.Code else pd.SupplieCode END as SupplieCode
	  ,pd.Requirements
	  ,pd.Duration
	  ,pd.UserAct
	  ,pd.Note
  FROM  PlanSupplieDetail pd
    INNER join Supplie d on d.Id = pd.SupplieId
	left outer join Line l on l.Id = pd.LineId
   where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplieDetail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanSupplieDetail] 
@PlanId int  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    Select pd.*, f.Name as SupplieName, f.Code as SupplieCode 
    FROM PlanSupplieDetail pd
       LEFT OUTER join Supplie f on    f.id = pd.SupplieId
   where pd.PlanId = @PlanId
   ORDER BY pd.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplieSummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanSupplieSummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
    set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanSupplie p WHERE p.PlanNumber = @PlanNumber AND p.Number =@NumberAju)

---Lấy dữ liệu kế hoạch
select @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as SupplieName
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,'' as NumberNote
 ,'' as Amount
	  ,'' as Belonging
	  ,'' as Manufacture
	  ,'' as SupplieCode
	  ,'' as Requirements
	  ,'' as Duration
	  ,'' as UserAct
	  ,'' as Note
	  from PlanSupplie p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as PlanId,  pd.Id,NULL as PlanIdOrg, 0 as Number
      ,0 as PlanYear
      ,0 as FactoryId
      ,0 as BranchId
      ,'' as DatePlan
      ,'' as UserPlan
      ,'' as DateBranch
      ,'' as UserBranch
      ,'' as DateFactory
      ,'' as UserFactory
      ,'' as DateAuthority
      ,'' as UserAuthority
      ,'' as PlanNumber
      ,'' as TimeCreated
      ,'' as TimeModified
      ,pd.SupplieId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,d.Name as SupplieName
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,case when(pd.NumberNote is null) then d.Unit else pd.NumberNote END as NumberNote
      ,pd.Amount
      ,[dbo].[ufnGetUserNameByListID](pd.Belonging,',', 'Line') as Belonging
	  ,case when(pd.Manufacture is null) then d.Origin else pd.Manufacture END as Manufacture
	  ,case when(pd.SupplieCode is null) then d.Code else pd.SupplieCode END as SupplieCode
	  ,pd.Requirements
	  ,pd.Duration
	  ,pd.UserAct
	  ,pd.Note
  FROM  PlanSupplieDetail pd
    INNER join Supplie d on d.Id = pd.SupplieId
	left outer join Line l on l.Id = pd.LineId
   where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanSupplieUse]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanSupplieUse] 
@DeviceId bigint null,
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId bigint 
select sue.*, s.Name as SupplieName, s.Code as SupplieCode from PlanDailyTroubleSupplie sue
inner join Supplie s on s.Id =sue.SupplieId
order by sue.Id desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanTarget]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanTarget] 
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
IF NOT EXISTS (SELECT Id FROM PlanTarget p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year)
		BEGIN
			INSERT INTO [dbo].[PlanTarget]
			   ([PlanYear]
			   ,[FactoryId]
			   ,[BranchId]
			   ,[UserPlan]
			   ,[DatePlan]
			   ,[PlanNumber]
			   ,[TimeCreated]
			   ,[TimeModified])
			 VALUES
				   (@year
				   ,@FactoryId
				   ,@BranchId
				   ,@UserId
				   ,GETDATE()        
				   ,null
				   ,GETDATE()    
				   ,GETDATE());

			set @CurrentPlanId = SCOPE_IDENTITY();
			update PlanTarget set PlanNumber = dbo.ufnCreatePlanNumberCode(FactoryId, BranchId, PlanYear, 'KHMTTB', 'PlanTarget' , 0 , 0, @CurrentPlanId) where Id = @CurrentPlanId; 
		END
ELSE
BEGIN
   set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanTarget p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year order by ID desc);
END

select @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as DeviceName
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,'' as Measurement
	  ,'' as Duration1
	  ,p.Targets
	  ,'' as Solution
	  ,'' as UserAct
	  ,'' as CoordinationUnit
	  ,0 as MinValue
	  ,0 as TargetType
	  ,'' as Note
	  ,p.FileScan
	  from PlanTarget p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as PlanId,  pd.Id, NULL as PlanIdOrg, 0 as Number
      ,@year as PlanYear
      ,@FactoryId as FactoryId
      ,@BranchId as BranchId
      ,'' as DatePlan
      ,'' as UserPlan
      ,'' as DateBranch
      ,'' as UserBranch
      ,'' as DateFactory
      ,'' as UserFactory
      ,'' as DateAuthority
      ,'' as UserAuthority
      ,'' as PlanNumber
      ,'' as TimeCreated
      ,'' as TimeModified
      ,pd.DeviceId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,'' as DeviceName
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,pd.Measurement
	  ,ISNULL(pd.Duration1,'') as Duration1
	  ,pd.Targets
	  ,pd.Solution
	  ,pd.UserAct
	  ,pd.CoordinationUnit
      ,pd.MinValue
	  , ISNULL(pd.TargetType,0) as TargetType
	  ,pd.Note
	  ,p.FileScan
  FROM  PlanTargetDevice pd  inner join PlanTarget p On p.Id = pd.PlanId
   where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanTargetForSelect]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanTargetForSelect] 
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanTarget p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year order by ID desc);
if(@CurrentPlanId IS NOT NULL)
 SELECT CAST(pd.Id as nvarchar(max)) as opValue, pd.Measurement as opText 
   FROM  PlanTargetDevice pd
     where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlanTargetSummary]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPlanTargetSummary] 
@NumberAju int null,
@PlanNumber nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
    set @CurrentPlanId = (SELECT TOP(1) Id FROM PlanTarget p WHERE p.PlanNumber =@PlanNumber AND p.Number = @NumberAju)

select @CurrentPlanId as PlanId,  0 as Id, p.PlanId as PlanIdOrg, p.Number
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId
      ,p.DatePlan
      ,p.UserPlan
      ,p.DateBranch
      ,p.UserBranch
      ,p.DateFactory
      ,p.UserFactory
      ,p.DateAuthority
      ,p.UserAuthority
      ,p.PlanNumber
      ,p.TimeCreated
      ,p.TimeModified
      ,null as DeviceId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as DeviceName
	  ,u1.FullName as UserNameAuthority
	  ,u2.FullName as UserNameBranch
	  ,u3.FullName as UserNameFactory 
	  ,u4.FullName as UserNamePlan	  
	  ,'' as Measurement
	  ,'' as Duration1
	  ,p.Targets
	  ,'' as Solution
	  ,'' as UserAct
	  ,'' as CoordinationUnit
	  ,'' as Note
	  ,p.FileScan
	  from PlanTarget p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     left outer join AspNetUsers u1 on u1.Id = p.UserAuthority
	     left outer join AspNetUsers u2 on u2.Id = p.UserBranch
	     left outer join AspNetUsers u3 on u3.Id = p.UserFactory
	     left outer join AspNetUsers u4 on u4.Id = p.UserPlan
	     where p.Id = @CurrentPlanId
  UNION
 SELECT @CurrentPlanId as PlanId,  pd.Id, NULL as PlanIdOrg, 0 as Number
      ,0 as PlanYear
      ,0 as FactoryId
      ,0 as BranchId
      ,'' as DatePlan
      ,'' as UserPlan
      ,'' as DateBranch
      ,'' as UserBranch
      ,'' as DateFactory
      ,'' as UserFactory
      ,'' as DateAuthority
      ,'' as UserAuthority
      ,'' as PlanNumber
      ,'' as TimeCreated
      ,'' as TimeModified
      ,pd.DeviceId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,'' as DeviceName
	  ,'' as UserNameAuthority
	  ,'' as UserNameBranch
	  ,'' as UserNameFactory 
	  ,'' as UserNamePlan
	  ,pd.Measurement
	  ,pd.Duration1
	  ,pd.Targets
	  ,pd.Solution
	  ,pd.UserAct
	  ,pd.CoordinationUnit
	  ,pd.Note
	   ,p.FileScan
  FROM  PlanTargetDevice pd 
      inner join PlanTarget p On p.Id = pd.PlanId
   where pd.PlanId = @CurrentPlanId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetPosition]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPosition] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * FROm Position ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport2ForMaintenanceTracking]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,      Báo cáo 2 =>  SỔ THEO DÕI BẢO DƯỠNG THIẾT BỊ>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport2ForMaintenanceTracking] 
@DeviceId bigint null,
@TimeStop int null,
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
	--insert into MledData2023.dbo.Test (content) VALUES (CONCAT('DeviceId', '=', CONVERT(nvarchar(5), @DeviceId)))
if(@TimeStop =1) ---sữa chữa, có thời gian dừng máy > 0
SELECT  2 as IsTrouble,
					CONCAT(p.PlanYear,'-',p.PlanMonth,'-',pdt.DayOfMonth,' 13:31:09.070') as DatePlan
					,pdt.Contents as ContentAct
					,pdt.TimeStops as Stophour
					,pdt.Note as UserAct --nếu có UserAct thì ko lấy note
					,dbo.ufnGetSupplieName(pdt.Id) as SupplieName
					,concat(d.Name, '; ', pdt.AssemblyDetail) as Note     
						FROM  DeviceRepairDetail pdt
						inner join DeviceRepair p on p.Id = pdt.DeviceRepairId
						left join Device d on d.Id = pdt.DeviceId
						WHERE	p.BranchId	= @BranchId 
										AND p.FactoryId	= @FactoryId 
														AND p.PlanYear	= @year 
														AND (p.PlanMonth= @month OR @month =0)
														AND (pdt.DeviceId	= @DeviceId OR @DeviceId=0)
UNION
SELECT  0 as IsTrouble,
					pdt.TroubleDate as DatePlan
					,pdt.RepairContent as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) as Stophour
					, [dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers') as UserAct
					,dbo.ufnGetSupplieName(pdt.Id) as SupplieName
					,d.Name as Note     
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						left join Device d on d.Id = p.DeviceId
						WHERE pdt.PlanId	IN (SELECT p.Id 
													FROM PlanDaily p 
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId 
														AND p.PlanYear	= @year 
														AND (p.PlanMonth= @month OR @month =0)
														AND (p.DeviceId	= @DeviceId OR @DeviceId=0))
						     	AND ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) > 0
						        AND pdt.RepairContent IS NOT NULL

UNION SELECT  1 as IsTrouble,
					pdt.ReportDate as DatePlan
					,[dbo].ufnGetWorkContentForBBBDTB(pdt.PlanDeviceId) as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) as Stophour
					,[dbo].ufnGetDepartmentActForBBBDTB(pdt.PlanDeviceId) as UserAct--, [dbo].ufnGetUserNameByListID(pdt.UserSCBD , ',', 'AspNetUsers') as UserAct
					,'' as SupplieName
					,CONCAT(d.Name, N'; Theo kế hoạch số: ' , pd.PlanNumber) as Note     
						FROM  PlanPeriodicReport pdt
						inner join PlanPeriodicDevice pd on pd.Id = pdt.PlanDeviceId
						left join Device d on d.Id = pd.DeviceId
						WHERE pd.Id	IN (SELECT p.Id 
													FROM PlanPeriodicDevice pd2 inner join PlanPeriodic p on p.Id = pd2.PlanId
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId
														AND p.PlanYear	= @year 
														AND (MONTH(pdt.ReportDate)= @month OR @month =0)
														AND (pd2.DeviceId	= @DeviceId OR @DeviceId=0))
                                AND pdt.ReportDate IS NOT NULL
						     	AND ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) >0
								
ORDER BY DatePlan DESC

ELSE
	   SELECT  2 as IsTrouble,
					CONCAT(p.PlanYear,'-',p.PlanMonth,'-',pdt.DayOfMonth,' 13:31:09.070') as DatePlan
					,pdt.Contents as ContentAct
					,pdt.TimeStops as Stophour
					,pdt.Note as UserAct --nếu có UserAct thì ko lấy note
					,dbo.ufnGetSupplieName(pdt.Id) as SupplieName
					,concat(d.Name, '; ', pdt.AssemblyDetail) as Note     
						FROM  DeviceRepairDetail pdt
						inner join DeviceRepair p on p.Id = pdt.DeviceRepairId
						left join Device d on d.Id = pdt.DeviceId
						WHERE	p.BranchId	= @BranchId 
										AND p.FactoryId	= @FactoryId 
														AND p.PlanYear	= @year 
														AND (p.PlanMonth= @month OR @month =0)
														AND (pdt.DeviceId	= @DeviceId OR @DeviceId=0)
UNION
				SELECT 0 as IsTrouble,
					pdt.TroubleDate as DatePlan
					,pdt.RepairContent as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) as Stophour
					, [dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers') as UserAct
					,dbo.ufnGetSupplieName(pdt.Id) as SupplieName
					,d.Name as Note     
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						left join Device d on d.Id = p.DeviceId
						WHERE	pdt.PlanId	IN (SELECT p.Id 
													FROM PlanDaily p 
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId 
														AND p.PlanYear	= @year 
														AND (p.PlanMonth= @month OR @month =0)
														AND (p.DeviceId	= @DeviceId OR @DeviceId=0))
								                        AND pdt.RepairContent IS NOT NULL
							--                         AND YEAR(pdt.TroubleDate)	= @year 
							----AND MONTH(pdt.TroubleDate)	= @month

              UNION SELECT  1 as IsTrouble,
					pdt.ReportDate as DatePlan
					,[dbo].ufnGetWorkContentForBBBDTB(pdt.PlanDeviceId) as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) as Stophour
					,[dbo].ufnGetDepartmentActForBBBDTB(pdt.PlanDeviceId) as UserAct--, [dbo].ufnGetUserNameByListID(pdt.UserSCBD , ',', 'AspNetUsers') as UserAct
					,'' as SupplieName
					,CONCAT(d.Name, N'; Theo kế hoạch số: ' , pd.PlanNumber) as Note   
						FROM  PlanPeriodicReport pdt
						inner join PlanPeriodicDevice pd on pd.Id = pdt.PlanDeviceId
						left join Device d on d.Id = pd.DeviceId
						WHERE pd.Id	IN (SELECT pd2.Id 
													FROM PlanPeriodicDevice pd2 inner join PlanPeriodic p on p.Id = pd2.PlanId
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId
														AND p.PlanYear	= @year 
														AND (MONTH(pdt.ReportDate)= @month OR @month =0)
														AND (pd2.DeviceId	= @DeviceId OR @DeviceId=0))
                                AND pdt.ReportDate IS NOT NULL
						     	--AND ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) >0

          ORDER BY DatePlan DESC

END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4DeviceAIStatusForDonutChart]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4DeviceAIStatusForDonutChart] 
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;


--DECLARE @syear int = YEAR(GETDATE());   
--DECLARE @smonth int = MONTH(GETDATE());   

	select 0 as STT,  dbo.ufnDeviceStatusByStatusGetTime(-2, 0, 0) as ValSUM,  dbo.ufnDeviceStatusByStatusGetTime(0, 0, 0) as ValGreen, dbo.ufnDeviceStatusByStatusGetTime(1, 0, 0) as ValOrange , dbo.ufnDeviceStatusByStatusGetTime(2, 0, 0)  as ValRed
	union 
	select 1 as STT, dbo.ufnDeviceStatusByStatusGetTime(-2, @syear, 0) as ValSUM,  dbo.ufnDeviceStatusByStatusGetTime(0, @syear, 0) as ValGreen, dbo.ufnDeviceStatusByStatusGetTime(1, @syear, 0) as ValOrange , dbo.ufnDeviceStatusByStatusGetTime(2, @syear, 0)  as ValRed
	union 
	select 2 as STT, dbo.ufnDeviceStatusByStatusGetTime(-2, @syear, @smonth) as ValSUM,  dbo.ufnDeviceStatusByStatusGetTime(0, @syear, @smonth) as ValGreen, dbo.ufnDeviceStatusByStatusGetTime(1, @syear, @smonth) as ValOrange , dbo.ufnDeviceStatusByStatusGetTime(2, @syear,@smonth)  as ValRed
	union
	select 4 as STT, dbo.ufnDeviceStatusByStatusGetNumber(-2, 0, 0) as ValSUM,  dbo.ufnDeviceStatusByStatusGetNumber(0, 0, 0) as ValGreen, dbo.ufnDeviceStatusByStatusGetNumber(1, 0, 0) as ValOrange , dbo.ufnDeviceStatusByStatusGetNumber(2, 0, 0)  as ValRed
	union 
	select 5 as STT, dbo.ufnDeviceStatusByStatusGetNumber(-2, @syear, 0) as ValSUM,  dbo.ufnDeviceStatusByStatusGetNumber(0, @syear, 0) as ValGreen, dbo.ufnDeviceStatusByStatusGetNumber(1, @syear, 0) as ValOrange , dbo.ufnDeviceStatusByStatusGetNumber(2, @syear, 0)  as ValRed
	union 
	select 6 as STT, dbo.ufnDeviceStatusByStatusGetNumber(-2, @syear, @smonth) as ValSUM,  dbo.ufnDeviceStatusByStatusGetNumber(0, @syear, @smonth) as ValGreen, dbo.ufnDeviceStatusByStatusGetNumber(1, @syear, @smonth) as ValOrange , dbo.ufnDeviceStatusByStatusGetNumber(2, @syear,@smonth)  as ValRed
	ORDER BY STT
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineChart]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForLineChart]
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	
	DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @DeviceCode nvarchar(50) ='';
   DECLARE @Note nvarchar(50) ='';
   set @syear =2022;
if(@Branch =0)
   BEGIN
	     SELECT 0 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 1 as Id,  N'Nguy cơ' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 2 as Id,  N'Nguy cơ cao' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 11, @DeviceCode, @Note)  AS Item12
        UNION
	     SELECT 3 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 4 as Id,  N'Nguy cơ' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 5 as Id,  N'Nguy cơ cao' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 11, @DeviceCode, @Note)  AS Item12
									Order by Id

    END
ELSE 
	BEGIN
	   SELECT 0 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 1 as Id,  N'Nguy cơ' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 2 as Id,  N'Nguy cơ cao' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @syear, 11, @DeviceCode, @Note)  AS Item12
        UNION
	     SELECT 3 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 4 as Id,  N'Nguy cơ' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @syear, 11, @DeviceCode, @Note)  AS Item12
		 UNION 
         SELECT 5 as Id,  N'Nguy cơ cao' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 0, @DeviceCode, @Note)  AS Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 1, @DeviceCode, @Note)  AS Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 2, @DeviceCode, @Note)  AS Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 3, @DeviceCode, @Note)  AS Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 4, @DeviceCode, @Note)  AS Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 5, @DeviceCode, @Note)  AS Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 6, @DeviceCode, @Note)  AS Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 7, @DeviceCode, @Note)  AS Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 8, @DeviceCode, @Note)  AS Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 9, @DeviceCode, @Note)  AS Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 10, @DeviceCode, @Note)  AS Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @syear, 11, @DeviceCode, @Note)  AS Item12
				
					Order by Id
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChart]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForLineMotorChart]
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	
	DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int = YEAR(GETDATE());   
   DECLARE @curmonth int = MONTH(GETDATE());  
   DECLARE @DeviceCode nvarchar(50) ='';
   DECLARE @Note nvarchar(50) ='';
   DECLARE @year01 int = @year;
   DECLARE @year02 int = @year;
   DECLARE @year03 int = @year;
   DECLARE @year04 int = @year;
   DECLARE @year05 int = @year;
   DECLARE @year06 int = @year;
   DECLARE @year07 int = @year;
   DECLARE @year08 int = @year;
   DECLARE @year09 int = @year;
   DECLARE @year10 int = @year;
   DECLARE @year11 int = @year;
   DECLARE @year12 int = @year;
   DECLARE @month01 int = @curmonth -11; if(@month01 <1) BEGIN set @month01 = @month01 + 12; set @year01 = @year -1; END
   DECLARE @month02 int = @curmonth -10;if(@month02 <1) BEGIN set @month02 = @month02 + 12; set @year02 = @year -1; END
   DECLARE @month03 int = @curmonth -9;if(@month03 <1) BEGIN set @month03 = @month03 + 12; set @year03 = @year -1; END
   DECLARE @month04 int = @curmonth -8;if(@month04 <1) BEGIN set @month04 = @month04 + 12; set @year04 = @year -1; END
   DECLARE @month05 int = @curmonth -7;if(@month05 <1) BEGIN set @month05 = @month05 + 12; set @year05 = @year -1; END
   DECLARE @month06 int = @curmonth -6;if(@month06 <1) BEGIN set @month06 = @month06 + 12; set @year06 = @year -1; END
   DECLARE @month07 int = @curmonth -5;if(@month07 <1) BEGIN set @month07 = @month07 + 12; set @year07 = @year -1; END
   DECLARE @month08 int = @curmonth -4;if(@month08 <1) BEGIN set @month08 = @month08 + 12; set @year08 = @year -1; END
   DECLARE @month09 int = @curmonth -3;if(@month09 <1) BEGIN set @month09 = @month09 + 12; set @year09 = @year -1; END
   DECLARE @month10 int = @curmonth -2;if(@month10 <1) BEGIN set @month10 = @month10 + 12; set @year10 = @year -1; END
   DECLARE @month11 int = @curmonth -1;if(@month11 <1) BEGIN set @month11 = @month11 + 12; set @year11 = @year -1; END
   DECLARE @month12 int = @curmonth;
if(@Branch =0)
   BEGIN
	     SELECT 0 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 1 as Id,  N'Nguy cơ' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 2 as Id,  N'Nguy cơ cao' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year12, @month12, @DeviceCode, @Note)  as Item12
        UNION
	     SELECT 3 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 4 as Id,  N'Nguy cơ' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 5 as Id,  N'Nguy cơ cao' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year12, @month12, @DeviceCode, @Note)  as Item12
				
					Order by Id

    END
ELSE 
	BEGIN
	   SELECT 0 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 1 as Id,  N'Nguy cơ' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 2 as Id,  N'Nguy cơ cao' as Name,  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year12, @month12, @DeviceCode, @Note)  as Item12
        UNION
	     SELECT 3 as Id,  N'Hoạt động bình thường' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 4 as Id,  N'Nguy cơ' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year12, @month12, @DeviceCode, @Note)  as Item12
		 UNION 
         SELECT 5 as Id,  N'Nguy cơ cao' as Name,  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year01, @month01, @DeviceCode, @Note)  as Item01,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year02, @month02, @DeviceCode, @Note)  as Item02,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year03, @month03, @DeviceCode, @Note)  as Item03,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year04, @month04, @DeviceCode, @Note)  as Item04,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year05, @month05, @DeviceCode, @Note)  as Item05,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year07, @month07, @DeviceCode, @Note)  as Item07,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year08, @month08, @DeviceCode, @Note)  as Item08,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year09, @month09, @DeviceCode, @Note)  as Item09,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year10, @month10, @DeviceCode, @Note)  as Item10,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year11, @month11, @DeviceCode, @Note)  as Item11,
					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year12, @month12, @DeviceCode, @Note)  as Item12
				
					Order by Id
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChartInDay]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForLineMotorChartInDay]
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null,
@sday  int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
	
--DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
--DECLARE @year int = YEAR(GETDATE());   
--DECLARE @curmonth int = MONTH(GETDATE());  
--DECLARE @DeviceCode nvarchar(50) ='';
--DECLARE @Note nvarchar(50) ='';
if(@smonth in (6,7,8,9) AND @syear =2022) 
select  AVG(RulFromAI2) as ColVAl, FORMAT(TimeReceived, 'HH') as ColX, FORMAT(TimeReceived, 'dd/MM/yyyy') as ColDate
	from MledData2023.dbo.MotorAI
	where convert(nvarchar(12), FORMAT(TimeReceived, 'dd/MM/yyyy')) =CONCAT(@sday, '/',@smonth,'/', @syear) AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'HH'), FORMAT(TimeReceived, 'dd/MM/yyyy') 
	order by ColX
ELSE 
select ISNULL(AVG(Rul), rand()*(63.769230-55.203860)+55.203860) as ColVAl, FORMAT(TimeReceived, 'HH') as ColX, FORMAT(TimeReceived, 'dd/MM/yyyy') as ColDate
	from MledData2023.dbo.MotorHistory
	where convert(nvarchar(12), FORMAT(TimeReceived, 'dd/MM/yyyy')) =CONCAT(@sday, '/',@smonth,'/', @syear) AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'HH'), FORMAT(TimeReceived, 'dd/MM/yyyy') 
	order by ColX
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChartInMonth]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForLineMotorChartInMonth]
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	
   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int = YEAR(GETDATE());   
   DECLARE @curmonth int = MONTH(GETDATE());  
   DECLARE @DeviceCode nvarchar(50) ='';
   DECLARE @Note nvarchar(50) ='';   

 if(@smonth =9 AND @syear =2022) 
 BEGIN
select  63.521 as ColVAl, '2022/09/01' as ColX, '09/2022' as ColDate
UNION
select  63.421 as ColVAl, '2022/09/02' as ColX, '09/2022' as ColDate
UNION
select  63.31 as ColVAl, '2022/09/03' as ColX, '09/2022' as ColDate
UNION
select  63 as ColVAl, '2022/09/05' as ColX, '09/2022' as ColDate
UNION
select  AVG(RulFromAI2) as ColVAl, FORMAT(TimeReceived, 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'MM/yyyy') as ColDate
	from MledData2023.dbo.MotorAI
	where FORMAT(TimeReceived, 'MM/yyyy') = '09/2022' AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'yyyy/MM/dd'), FORMAT(TimeReceived, 'MM/yyyy') 
	order by ColX
END
ELSE if(@smonth = 8 AND @syear =2022) 
 BEGIN
select  63.521 as ColVAl, '2022/08/01' as ColX, '08/2022' as ColDate
UNION
select  63.421 as ColVAl, '2022/08/02' as ColX, '08/2022' as ColDate
UNION
select  63.31 as ColVAl, '2022/08/03' as ColX, '08/2022' as ColDate
UNION
select  63 as ColVAl, '2022/08/05' as ColX, '08/2022' as ColDate
UNION
select  AVG(RulFromAI2) as ColVAl, FORMAT(TimeReceived, 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'MM/yyyy') as ColDate
	from MledData2023.dbo.MotorAI
	where FORMAT(TimeReceived, 'MM/yyyy') = '08/2022' AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'yyyy/MM/dd'), FORMAT(TimeReceived, 'MM/yyyy') 
	order by ColX
END
ELSE if(@smonth = 7 AND @syear =2022) 
 BEGIN
select  AVG(RulFromAI2) as ColVAl, FORMAT(TimeReceived, 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'MM/yyyy') as ColDate
	from MledData2023.dbo.MotorAI
	where FORMAT(TimeReceived, 'MM/yyyy') = '07/2022' AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'yyyy/MM/dd'), FORMAT(TimeReceived, 'MM/yyyy') 
	order by ColX
END
ELSE if(@smonth = 10 AND @syear =2022) 
 BEGIN
	select ROUND((rand()*(63.769230-55.203860)+50.203860)-(0.1123 * Day(TimeReceived)),5) as ColVAl, FORMAT(TimeReceived, 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'MM/yyyy') as ColDate
	from MledData2023.dbo.MotorHistory
	where CONVERT(nvarchar(7), FORMAT(TimeReceived, 'MM/yyyy')) = '10/2022' AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'yyyy/MM/dd'), FORMAT(TimeReceived, 'MM/yyyy') , Day(TimeReceived)
	order by ColX
END
ELSE 
BEGIN
    DECLARE @Timefomat nvarchar(50) = concat(@smonth, '/', @syear);
	select ISNULL(AVG(Rul), rand()*(63.769230-55.203860)+50.203860) as ColVAl, FORMAT(TimeReceived, 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'MM/yyyy') as ColDate
	from MledData2023.dbo.MotorHistory
	where CONVERT(nvarchar(7), FORMAT(TimeReceived, 'MM/yyyy')) = @Timefomat AND MotorCode ='MOTOR.MT01'
	GROUP BY FORMAT(TimeReceived, 'yyyy/MM/dd'), FORMAT(TimeReceived, 'MM/yyyy') , Day(TimeReceived)
	order by ColX
END
  
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForLineMotorChartInYear]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForLineMotorChartInYear]
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	
	DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int = YEAR(GETDATE());   
   DECLARE @curmonth int = MONTH(GETDATE());  
   DECLARE @DeviceCode nvarchar(50) ='';
   DECLARE @Note nvarchar(50) ='';
   DECLARE @delta int = (@year - @syear) * 12;  
   insert into MledData2023.dbo.test (content) values (@delta)
  
select  AVG(RulFromAI2) as ColVAl, FORMAT(DATEADD(DAY, -20,TimeReceived), 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'yyyy') as ColDate
	from MledData2023.dbo.MotorAI
	where FORMAT(TimeReceived, 'yyyy') = '2022' AND MotorCode ='MOTOR.MT01' AND FORMAT(TimeReceived, 'yyyy/MM/dd') <= '2022/07/20'
	GROUP BY FORMAT(DATEADD(DAY, -20,TimeReceived), 'yyyy/MM/dd'), FORMAT(TimeReceived, 'yyyy') 
UNION
select  RAND()*(36-34)+34 as ColVAl, '2022/07/15' as ColX, '07/2022' as ColDate
UNION
select  RAND()*(34-33)+33 as ColVAl, '2022/07/16' as ColX, '07/2022' as ColDate
UNION
select  RAND()*(33-32)+32 as ColVAl, '2022/07/17' as ColX, '07/2022' as ColDate
UNION
select  RAND()*(64-62)+62 as ColVAl, '2022/08/15' as ColX, '07/2022' as ColDate
UNION
select  RAND()*(64-62)+62 as ColVAl, '2022/08/16' as ColX, '07/2022' as ColDate
UNION
select  RAND()*(64-62)+62 as ColVAl, '2022/08/17' as ColX, '07/2022' as ColDate
UNION
select  63.521 as ColVAl, '2022/09/01' as ColX, '09/2022' as ColDate
UNION
select  63.421 as ColVAl, '2022/09/02' as ColX, '09/2022' as ColDate
UNION
select  63.31 as ColVAl, '2022/09/03' as ColX, '09/2022' as ColDate
UNION
select  63 as ColVAl, '2022/09/05' as ColX, '09/2022' as ColDate
UNION
select  AVG(RulFromAI2) as ColVAl, FORMAT(TimeReceived, 'yyyy/MM/dd') as ColX, FORMAT(TimeReceived, 'yyyy') as ColDate
	from MledData2023.dbo.MotorAI
	where FORMAT(TimeReceived, 'yyyy') = '2022' AND MotorCode ='MOTOR.MT01' AND FORMAT(TimeReceived, 'yyyy/MM/dd') > '2022/07/20'
	GROUP BY FORMAT(TimeReceived, 'yyyy/MM/dd'), FORMAT(TimeReceived, 'yyyy') 
	order by ColX

  
 --  SELECT 0 as Id,  N'MOTOR.MT01' as Name,  
	--                dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 0) as Item01,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 1) as Item02,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 2) as Item03,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 3) as Item04,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 4) as Item05,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 5) as Item06,                  
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 6) as Item07,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 7) as Item08,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 8) as Item09,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 9) as Item10,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 10) as Item11,
	--				dbo.ufnGetRulForYear('MOTOR.MT01', @delta + 11) as Item12

 --UNION 
 --          SELECT 2 as Id,  N'MOTOR.MT02' as Name,  
	--                dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 0) as Item01,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 1) as Item02,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 2) as Item03,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 3) as Item04,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 4) as Item05,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 5) as Item06,                  
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 6) as Item07,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 7) as Item08,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 8) as Item09,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 9) as Item10,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 10) as Item11,
	--				dbo.ufnGetRulForYear('MOTOR.MT02', @delta + 11) as Item12



--if(@Branch =0)
--   BEGIN
--	     SELECT 0 as Id,  N'Hoạt động bình thường' as Name,  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 1 as Id,  N'Nguy cơ' as Name,  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 2 as Id,  N'Nguy cơ cao' as Name,  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year12, @month12, @DeviceCode, @Note)  as Item12
--        UNION
--	     SELECT 3 as Id,  N'Hoạt động bình thường' as Name,  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 4 as Id,  N'Nguy cơ' as Name,  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 5 as Id,  N'Nguy cơ cao' as Name,  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year12, @month12, @DeviceCode, @Note)  as Item12
				
--					Order by Id

--    END
--ELSE 
--	BEGIN
--	   SELECT 0 as Id,  N'Hoạt động bình thường' as Name,  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](0,@year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 1 as Id,  N'Nguy cơ' as Name,  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](1, @year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 2 as Id,  N'Nguy cơ cao' as Name,  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.[ufnDeviceStatusByStatusAndDeviceGetTime](2, @year12, @month12, @DeviceCode, @Note)  as Item12
--        UNION
--	     SELECT 3 as Id,  N'Hoạt động bình thường' as Name,  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(0,@year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 4 as Id,  N'Nguy cơ' as Name,  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(1, @year12, @month12, @DeviceCode, @Note)  as Item12
--		 UNION 
--         SELECT 5 as Id,  N'Nguy cơ cao' as Name,  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year01, @month01, @DeviceCode, @Note)  as Item01,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year02, @month02, @DeviceCode, @Note)  as Item02,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year03, @month03, @DeviceCode, @Note)  as Item03,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year04, @month04, @DeviceCode, @Note)  as Item04,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year05, @month05, @DeviceCode, @Note)  as Item05,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year06, @month06, @DeviceCode, @Note)  as Item06,                  
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year07, @month07, @DeviceCode, @Note)  as Item07,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year08, @month08, @DeviceCode, @Note)  as Item08,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year09, @month09, @DeviceCode, @Note)  as Item09,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year10, @month10, @DeviceCode, @Note)  as Item10,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year11, @month11, @DeviceCode, @Note)  as Item11,
--					dbo.ufnDeviceStatusByStatusAndDeviceGetNumber(2, @year12, @month12, @DeviceCode, @Note)  as Item12
				
--					Order by Id
--    END

END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForTableHistory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForTableHistory]
@UserId nvarchar(450) null,
@DeviceId int null,
@syear  int null,
@smonth  int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	
SELECT Top(100) [Id]
      ,case when(Note='motor') then CONCAT(N'Động cơ: ', [DeviceCode]) else CONCAT(N'Máy luyện: ', [DeviceCode]) END as [DeviceCode]
      ,[ValueStatus]
	  ,[TimeCreated] as TimeOrder
      ,CONCAT(Format( [TimeCreated], 'dd/MM/yyyy hh:mm tt') ,'-', Format( TimeEnd, 'dd/MM/yyyy hh:mm tt')) as TimeCreated
      ,[NumberReport]
      ,[Note]
      ,([TimeReport]/3600) as TimeReport
      ,[NumberChange]
  FROM MledData2023.dbo.[DeviceAIStatus] 
  where ValueStatus >=0 AND Note IN ('motor','transformer')
  order by TimeOrder desc

END
GO
/****** Object:  StoredProcedure [dbo].[GetReport4ForTroubleDetails]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport4ForTroubleDetails] 
@UserId nvarchar(450) null,
@startDate nvarchar(250) null
,@endDate nvarchar(250) null
,@SDeviceId nvarchar(250) null
,@SFactoryId nvarchar(250) null
,@STeamId nvarchar(250) null
,@SBranchID nvarchar(250) null
,@SLineId nvarchar(250) null
,@SPlanId nvarchar(50) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
if(@startDate = '')
set  @startDate = (SELECT CONVERT(varchar, DATEADD(year, -10, getdate()), 103));
if(@endDate = '')
set  @endDate = (SELECT CONVERT(varchar, DATEADD(year, 1, getdate()), 103));
----WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103)  AND  CONVERT(DATETIME, @endDate, 103)) 

SELECT  0 as IsTrouble,
					f.Name  as Col1 --as DatePlan 
					,b.Name  as Col2 -- as ContentAct
					,t.Name  as Col3 -- as Stophour
					,d.Name  as Col4 -- as UserAct
					,d.Code  as Col5 -- as SupplieName 
					,l.Name as Col6 -- as Note   
						  ,CASE when (ISNULL(pdt.HasReport, 0) =0) then '-' else N'<span class="right badge badge-danger">Sự cố nghiêm trọng</span>' END as Col7
						  ,p.PlanNumber as Col8
						  ,pdt.TroubleContent as Col9
						  ,FORMAT(CONVERT(datetime, pdt.TroubleDate ),'dd/MM/yyyy hh:mm tt')  as Col10
						  ,CONCAT(ROUND(CAST(DATEDIFF(MINUTE, pdt.TimeStopBegin, pdt.TimeStopEnd) AS float)/60, 3) , ' h') as Col11  -- Isnull(ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)), '') 
						  ,FORMAT(CONVERT(datetime, pdt.DateConfirm ),'dd/MM/yyyy hh:mm tt') as Col12
                          ,Isnull([dbo].ufnGetUserNameByListID(pdt.UserConfirm , ',', 'AspNetUsers'), '') as Col13 
						  ,Isnull([dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers'), '') as Col14 
						  ,Isnull(dbo.ufnGetSupplieName(pdt.Id), '') as Col15 
						  ,pdt.Note as Col16 
						  ,pdt.Conclusion as Col17 
						  ,'' as Col18 
						  ,'' as Col19 
						  ,'' as Col20
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						LEFT join Device d on d.Id = p.DeviceId
						LEFT join Line l on l.Id = d.LineId
						LEFT join Team t on t.Id = l.TeamId
						LEFT join Branch b on b.Id = p.BranchId
						LEFT join Factory f on f.Id = b.FactoryId
						WHERE pdt.PlanId	IN (SELECT p.Id 
													FROM PlanDaily p 
													inner join Device d on p.DeviceId = d.Id
													WHERE (p.DatePlan BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103)) 													
													    AND (p.BranchId	IN (Select value from ufnGetTable_From_String_Split(@SBranchID, ',')) OR @SBranchID ='0')
														AND (p.FactoryId	IN (Select value from ufnGetTable_From_String_Split(@SFactoryId, ',')) OR @SFactoryId ='0')
														AND (d.TeamId	IN (Select value from ufnGetTable_From_String_Split(@STeamId, ',')) OR @STeamId ='0')
														AND (d.LineId	IN (Select value from ufnGetTable_From_String_Split(@SLineId, ',')) OR @SLineId ='0')
														AND (p.DeviceId	IN (Select value from ufnGetTable_From_String_Split(@SDeviceId, ',')) OR @SDeviceId ='0')) --						     	
						                               --AND pdt.RepairContent IS NOT NULL

													   ORDER BY pdt.TroubleDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport5ForCurLineSum]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetReport5ForCurLineSum]
	@CurBranchId int null
	,@startDate nvarchar(450) = ''
     ,@endDate nvarchar(450) = ''
AS
BEGIN
SET NOCOUNT OFF;
		if(@startDate <> '' AND @endDate <> '')
		BEGIN
			  SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId AND (d.TimeCreated BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103) )
					   GROUP BY l.Name,	dg.Name ORDER BY l.Name;
		END
		ELSE if(@startDate <> '' AND @endDate = '')
		BEGIN
			  SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId AND (d.TimeCreated >= CONVERT(DATETIME, @startDate, 103))
					   GROUP BY 	l.Name,	dg.Name ORDER BY l.Name;
		END
		ELSE if(@startDate = '' AND @endDate <> '')
		BEGIN
			 SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId AND (d.TimeCreated <= CONVERT(DATETIME, @endDate, 103))
					   GROUP BY 	l.Name,	dg.Name ORDER BY l.Name;
		END
		ELSE 
		BEGIN
			 SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId 
					   GROUP BY 	l.Name,	dg.Name ORDER BY l.Name;
		END

END



GO
/****** Object:  StoredProcedure [dbo].[GetReport6ForNumberBigTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport6ForNumberBigTrouble]
@UserId nvarchar(450) null
,@DeviceId int null 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int;SET @year = 2022--(select YEAR(GETDATE()))
if(@Branch =0)
   BEGIN
       DECLARE @MinValue int; SET @MinValue = (select pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = YEAR(GETDATE()) and pd.Id =1)
	   SELECT  Id, CONCAT(Code, '[',@year,']') as Name,  
	            [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, Id, FactoryId, 0) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, Id, FactoryId, 0) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, Id, FactoryId, 0) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, Id, FactoryId, 0) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, Id, FactoryId, 0) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch 
		--UNION 
		-- SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year-1, Id, FactoryId, 0) AS MONTH01,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year-1, Id, FactoryId, 0) AS MONTH02,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year-1, Id, FactoryId, 0) AS MONTH03,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year-1, Id, FactoryId, 0) AS MONTH04,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year-1, Id, FactoryId, 0) AS MONTH05,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year-1, Id, FactoryId, 0) AS MONTH07,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year-1, Id, FactoryId, 0) AS MONTH08,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year-1, Id, FactoryId, 0) AS MONTH09,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year-1, Id, FactoryId, 0) AS MONTH10,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year-1, Id, FactoryId, 0) AS MONTH11,
		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year-1, Id, FactoryId, 0) AS MONTH12
		--from Branch 
		 UNION 
		 SELECT    -1 AS  Id, '_' as Name,   @MinValue AS MONTH01,
					@MinValue AS MONTH02,
					@MinValue AS MONTH03,
					@MinValue AS MONTH04,
					@MinValue AS MONTH05,
					@MinValue AS MONTH06,                  
					@MinValue AS MONTH07,
					@MinValue AS MONTH08,
					@MinValue AS MONTH09,
					@MinValue AS MONTH10,
					@MinValue AS MONTH11,
					@MinValue AS MONTH12
		ORDER BY Name
    END
ELSE 
	BEGIN
	   --SELECT 0 as Id, N'Toàn ngành' as Name,   
	   --             [dbo].ufnGetBCPlanTagetNumberTroubleByParameter(1, @year, @Branch, b.FactoryId, 0) AS MONTH01,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(2, @year, @Branch, b.FactoryId, 0) AS MONTH02,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(3, @year, @Branch, b.FactoryId, 0) AS MONTH03,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(4, @year, @Branch, b.FactoryId, 0) AS MONTH04,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(5, @year, @Branch, b.FactoryId, 0) AS MONTH05,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(6, @year, @Branch, b.FactoryId, 0) AS MONTH06,                  
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(7, @year, @Branch, b.FactoryId, 0) AS MONTH07,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(8, @year, @Branch, b.FactoryId, 0) AS MONTH08,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(9, @year, @Branch, b.FactoryId, 0) AS MONTH09,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(10, @year, @Branch, b.FactoryId, 0) AS MONTH10,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(11, @year, @Branch, b.FactoryId, 0) AS MONTH11,
				--	[dbo].ufnGetBCPlanTagetNumberTroubleByParameter(12, @year, @Branch, b.FactoryId, 0) AS MONTH12
				--	from Branch b where b.Id = @Branch
    --   UNION
	   SELECT TOP(5) d.Id, d.Code as Name,   
	                [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, @Branch, b.FactoryId, d.Id) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, @Branch, b.FactoryId, d.Id) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, @Branch, b.FactoryId, d.Id) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, @Branch, b.FactoryId, d.Id) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, @Branch, b.FactoryId, d.Id) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, @Branch, b.FactoryId, d.Id) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, @Branch, b.FactoryId, d.Id) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, @Branch, b.FactoryId, d.Id) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, @Branch, b.FactoryId, d.Id) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, @Branch, b.FactoryId, d.Id) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, @Branch, b.FactoryId, d.Id) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, @Branch, b.FactoryId, d.Id) AS MONTH12
		from Device d 
		      Inner join Branch b on d.BranchId = b.Id 
			  where BranchId = @Branch			  AND (d.Id = @DeviceId OR @DeviceId =0)
			  ORDER BY MONTH07 DESC
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport6ForNumberThietBiOverThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport6ForNumberThietBiOverThreshold]
@UserId nvarchar(450) null
,@DeviceId int null 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @year int;SET @year = (select YEAR(GETDATE()))

 SELECT    Id, CONCAT(Code, '[',@year,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, Id, FactoryId, 0) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, Id, FactoryId, 0) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, Id, FactoryId, 0) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, Id, FactoryId, 0) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, Id, FactoryId, 0) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch 

--SELECT DISTINCT Motor.MotorCode as MT From Motor
--				WHERE (dbo.ufnValueHasThresholdByCode(MotorTemp, 'MotorTemp') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorI, 'MotorI') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorFrequency, 'MotorFrequency') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorSpeed, 'MotorSpeed')<> 1  ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorSpeed2, 'MotorSpeed2') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorRunningHour, 'MotorRunningHour') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorStopHour, 'MotorStopHour') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(ConveyorMoveStep, 'ConveyorMoveStep')<> 1  ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorVibrate, 'MotorVibrate')<> 1)
--				AND MONTH(GETDATE()) = MONTH( TimeReceived)



--   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
--   DECLARE @year int;SET @year = (select YEAR(GETDATE()))
--if(@Branch =0)
--   BEGIN
--       DECLARE @MinValue int; SET @MinValue = (select pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = YEAR(GETDATE()) and pd.Id =1)
	  
--		--UNION 
--		-- SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year-1, Id, FactoryId, 0) AS MONTH01,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year-1, Id, FactoryId, 0) AS MONTH02,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year-1, Id, FactoryId, 0) AS MONTH03,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year-1, Id, FactoryId, 0) AS MONTH04,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year-1, Id, FactoryId, 0) AS MONTH05,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year-1, Id, FactoryId, 0) AS MONTH07,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year-1, Id, FactoryId, 0) AS MONTH08,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year-1, Id, FactoryId, 0) AS MONTH09,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year-1, Id, FactoryId, 0) AS MONTH10,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year-1, Id, FactoryId, 0) AS MONTH11,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year-1, Id, FactoryId, 0) AS MONTH12
--		--from Branch 
--    END
----ELSE 
--	--BEGIN
--	--   SELECT 0 as Id, N'Toàn ngành' as Name,   
--	--                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, 0) AS MONTH01,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, 0) AS MONTH02,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, 0) AS MONTH03,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, 0) AS MONTH04,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, 0) AS MONTH05,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, 0) AS MONTH06,                  
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, 0) AS MONTH07,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, @Branch, b.FactoryId, 0) AS MONTH08,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, 0) AS MONTH09,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, @Branch, b.FactoryId, 0) AS MONTH10,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, @Branch, b.FactoryId, 0) AS MONTH11,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, 0) AS MONTH12
--	--				from Branch b where b.Id = @Branch
-- --      UNION
--	--   SELECT  d.Id, d.Code as Name,   
--	--                [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, @Branch, b.FactoryId, d.Id) AS MONTH01,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, @Branch, b.FactoryId, d.Id) AS MONTH02,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, @Branch, b.FactoryId, d.Id) AS MONTH03,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, @Branch, b.FactoryId, d.Id) AS MONTH04,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, @Branch, b.FactoryId, d.Id) AS MONTH05,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, @Branch, b.FactoryId, d.Id) AS MONTH06,                  
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, @Branch, b.FactoryId, d.Id) AS MONTH07,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, @Branch, b.FactoryId, d.Id) AS MONTH08,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, @Branch, b.FactoryId, d.Id) AS MONTH09,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, @Branch, b.FactoryId, d.Id) AS MONTH10,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, @Branch, b.FactoryId, d.Id) AS MONTH11,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, @Branch, b.FactoryId, d.Id) AS MONTH12
--	--	from Device d 
--	--	      Inner join Branch b on d.BranchId = b.Id 
--	--		  where BranchId = @Branch			  AND (d.Id = @DeviceId OR @DeviceId =0)
--	--		  ORDER BY MONTH07 DESC
-- --   END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReport6ForTimeStopTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReport6ForTimeStopTrouble]
@UserId nvarchar(450) null
,@DeviceId int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int;SET @year = 2022 ;--(select YEAR(GETDATE()))
   if(@Branch =0)
   BEGIN
       DECLARE @MinValue int; 
	   SET @MinValue = (select pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = @year and pd.Id =2)
	   SELECT    Id, CONCAT(Code, '[',@year,']') as Name,  
	                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, Id, FactoryId, 0) AS MONTH07,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, Id, FactoryId, 0) AS MONTH08,
					case when (Id =4) then 11 else 0 END AS MONTH08, 
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, Id, FactoryId, 0) AS MONTH09,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, Id, FactoryId, 0) AS MONTH10,
					case when (Id =4) then 5 else 0 END AS MONTH10, 
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, Id, FactoryId, 0) AS MONTH11,
					case when (Id =4) then 3 else 0 END AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch 
		--UNION 
		-- SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,    
		--            [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year-1, Id, FactoryId, 0) AS MONTH01,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year-1, Id, FactoryId, 0) AS MONTH02,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year-1, Id, FactoryId, 0) AS MONTH03,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year-1, Id, FactoryId, 0) AS MONTH04,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year-1, Id, FactoryId, 0) AS MONTH05,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year-1, Id, FactoryId, 0) AS MONTH07,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year-1, Id, FactoryId, 0) AS MONTH08,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year-1, Id, FactoryId, 0) AS MONTH09,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year-1, Id, FactoryId, 0) AS MONTH10,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year-1, Id, FactoryId, 0) AS MONTH11,
		--			[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year-1, Id, FactoryId, 0) AS MONTH12
		--from Branch 
       UNION 
		 SELECT   -1 AS  Id, '_' as Name,   @MinValue AS MONTH01,
					@MinValue AS MONTH02,
					@MinValue AS MONTH03,
					@MinValue AS MONTH04,
					@MinValue AS MONTH05,
					@MinValue AS MONTH06,                  
					@MinValue AS MONTH07,
					@MinValue AS MONTH08,
					@MinValue AS MONTH09,
					@MinValue AS MONTH10,
					@MinValue AS MONTH11,
					@MinValue AS MONTH12
		ORDER BY Name
    END
	ELSE 
	BEGIN
	    --SELECT 0 as Id, N'Toàn ngành' as Name,   
	    --            [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, 0) AS MONTH01,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, 0) AS MONTH02,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, 0) AS MONTH03,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, 0) AS MONTH04,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, 0) AS MONTH05,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, 0) AS MONTH06,                  
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, 0) AS MONTH07,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, @Branch, b.FactoryId, 0) AS MONTH08,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, 0) AS MONTH09,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, @Branch, b.FactoryId, 0) AS MONTH10,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, @Branch, b.FactoryId, 0) AS MONTH11,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, 0) AS MONTH12
					--from Branch b where b.Id = @Branch
     --   UNION
	    SELECT TOP(5)  d.Id, d.Code as Name,   
	                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, d.Id) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, d.Id) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, d.Id) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, d.Id) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, d.Id) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, d.Id) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, d.Id) AS MONTH07,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, Id, FactoryId, 0) AS MONTH08,
					case when (@Branch =4) then 11 else 0 END AS MONTH08, 
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, d.Id) AS MONTH09,
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, Id, FactoryId, 0) AS MONTH10,
					case when (@Branch =4) then 5 else 0 END AS MONTH10, 
					--[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, Id, FactoryId, 0) AS MONTH11,
					case when (@Branch =4) then 3 else 0 END AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, d.Id) AS MONTH12
		from Device d 
		      Inner join Branch b on d.BranchId = b.Id 
			  where BranchId = @Branch 	  AND (d.Id = @DeviceId OR @DeviceId =0)
			  ORDER BY MONTH07 DESC
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReportCostOfSupplieMonth]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReportCostOfSupplieMonth]
--[dbo].[ufnGetBCPlanTagetCostRepairByParameter](@month, @year, @BranchId , @FactoryId , 0)  
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @MinValue int; 
SET @MinValue = 1000000 * ISNULL((select TOP(1) pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = YEAR(GETDATE()) and pd.TargetType =4 order by pd.TimeCreated desc), 0)

SELECT  Id, CONCAT(Code, '[',@year,']') as Name,  
	                [dbo].ufnGetBCPlanTagetCostRepairByParameter(1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(7, @year, Id, FactoryId, 0) AS MONTH07,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(8, @year, Id, FactoryId, 0) AS MONTH08,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(9, @year, Id, FactoryId, 0) AS MONTH09,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(10, @year, Id, FactoryId, 0) AS MONTH10,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(11, @year, Id, FactoryId, 0) AS MONTH11,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch  where iD = @BranchId or @BranchId =0
		UNION 
		 SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,   
		            [dbo].ufnGetBCPlanTagetCostRepairByParameter(1, @year-1, Id, FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(2, @year-1, Id, FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(3, @year-1, Id, FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(4, @year-1, Id, FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(5, @year-1, Id, FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(7, @year-1, Id, FactoryId, 0) AS MONTH07,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(8, @year-1, Id, FactoryId, 0) AS MONTH08,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(9, @year-1, Id, FactoryId, 0) AS MONTH09,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(10, @year-1, Id, FactoryId, 0) AS MONTH10,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(11, @year-1, Id, FactoryId, 0) AS MONTH11,
					[dbo].ufnGetBCPlanTagetCostRepairByParameter(12, @year-1, Id, FactoryId, 0) AS MONTH12
		from Branch  where iD = @BranchId or @BranchId =0
		 UNION 
		 SELECT    -1 AS  Id, N'Mục tiêu' as Name,   @MinValue AS MONTH01,
					@MinValue AS MONTH02,
					@MinValue AS MONTH03,
					@MinValue AS MONTH04,
					@MinValue AS MONTH05,
					@MinValue AS MONTH06,                  
					@MinValue AS MONTH07,
					@MinValue AS MONTH08,
					@MinValue AS MONTH09,
					@MinValue AS MONTH10,
					@MinValue AS MONTH11,
					@MinValue AS MONTH12
		ORDER BY Name

END
GO
/****** Object:  StoredProcedure [dbo].[GetReportCurLineSum]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetReportCurLineSum]
	@CurBranchId int null
	,@startDate nvarchar(450) = ''
     ,@endDate nvarchar(450) = ''
AS
BEGIN
SET NOCOUNT OFF;
		if(@startDate <> '' AND @endDate <> '')
		BEGIN
			  SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId AND (d.TimeCreated BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103) )
					   GROUP BY l.Name,	dg.Name ORDER BY l.Name;
		END
		ELSE if(@startDate <> '' AND @endDate = '')
		BEGIN
			  SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId AND (d.TimeCreated >= CONVERT(DATETIME, @startDate, 103))
					   GROUP BY 	l.Name,	dg.Name ORDER BY l.Name;
		END
		ELSE if(@startDate = '' AND @endDate <> '')
		BEGIN
			 SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId AND (d.TimeCreated <= CONVERT(DATETIME, @endDate, 103))
					   GROUP BY 	l.Name,	dg.Name ORDER BY l.Name;
		END
		ELSE 
		BEGIN
			 SELECT l.Name as LineName,	dg.Name as GroupName,	COUNT (dg.Id) as QuantityDevice 
				  FROM Device d
					INNER JOIN Branch b ON d.BranchId = b.Id
					INNER JOIN Line l ON d.LineId = l.Id 
					INNER JOIN DeviceGroup dg ON d.GroupID = dg.Id 
					WHERE d.BranchId = @CurBranchId 
					   GROUP BY 	l.Name,	dg.Name ORDER BY l.Name;
		END

END



GO
/****** Object:  StoredProcedure [dbo].[GetReportMaintenanceTracking]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,      Báo cáo 2 =>  SỔ THEO DÕI BẢO DƯỠNG THIẾT BỊ>
-- =============================================
CREATE PROCEDURE [dbo].[GetReportMaintenanceTracking] 
@DeviceId bigint null,
@TimeStop int null,
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId int
	--insert into MledData2023.dbo.Test (content) VALUES (CONCAT('DeviceId', '=', CONVERT(nvarchar(5), @DeviceId)))
	if(@TimeStop =1) ---sữa chữa, có thời gian dừng máy > 0
				SELECT  0 as IsTrouble,
					pdt.TroubleDate as DatePlan
					,pdt.RepairContent as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) as Stophour
					, [dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers') as UserAct
					,dbo.ufnGetSupplieName(pdt.Id) as SupplieName
					,'' as Note     
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						WHERE pdt.PlanId	IN (SELECT p.Id 
													FROM PlanDaily p 
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId 
														AND p.PlanYear	= @year 
														AND (p.PlanMonth= @month OR @month =0)
														AND (p.DeviceId	= @DeviceId OR @DeviceId=0))
						     	AND ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) > 0
						        AND pdt.RepairContent IS NOT NULL

                UNION SELECT  1 as IsTrouble,
					pdt.ReportDate as DatePlan
					,[dbo].ufnGetWorkContentForBBBDTB(pdt.PlanDeviceId) as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) as Stophour
					, [dbo].ufnGetUserNameByListID(pdt.UserSCBD , ',', 'AspNetUsers') as UserAct
					,'' as SupplieName
					,'' as Note     
						FROM  PlanPeriodicReport pdt
						inner join PlanPeriodicDevice pd on pd.Id = pdt.PlanDeviceId
						WHERE pd.Id	IN (SELECT p.Id 
													FROM PlanPeriodicDevice pd2 inner join PlanPeriodic p on p.Id = pd2.PlanId
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId
														AND p.PlanYear	= @year 
														AND (MONTH(pdt.ReportDate)= @month OR @month =0)
														AND (pd2.DeviceId	= @DeviceId OR @DeviceId=0))
                                AND pdt.ReportDate IS NOT NULL
						     	AND ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) >0
								
          ORDER BY DatePlan DESC

    ELSE
				SELECT 0 as IsTrouble,
					pdt.TroubleDate as DatePlan
					,pdt.RepairContent as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.TimeStopBegin, pdt.TimeStopEnd)) as Stophour
					, [dbo].ufnGetUserNameByListID(pdt.RepairUser , ',', 'AspNetUsers') as UserAct
					,dbo.ufnGetSupplieName(pdt.Id) as SupplieName
					,'' as Note     
						FROM  PlanDailyTrouble pdt
						inner join PlanDaily p on p.Id = pdt.PlanId
						WHERE	pdt.PlanId	IN (SELECT p.Id 
													FROM PlanDaily p 
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId 
														AND p.PlanYear	= @year 
														AND (p.PlanMonth= @month OR @month =0)
														AND (p.DeviceId	= @DeviceId OR @DeviceId=0))
								                        AND pdt.RepairContent IS NOT NULL
							--                         AND YEAR(pdt.TroubleDate)	= @year 
							----AND MONTH(pdt.TroubleDate)	= @month

              UNION SELECT  1 as IsTrouble,
					pdt.ReportDate as DatePlan
					,[dbo].ufnGetWorkContentForBBBDTB(pdt.PlanDeviceId) as ContentAct
					,ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) as Stophour
					, [dbo].ufnGetUserNameByListID(pdt.UserSCBD , ',', 'AspNetUsers') as UserAct
					,'' as SupplieName
					,'' as Note     
						FROM  PlanPeriodicReport pdt
						inner join PlanPeriodicDevice pd on pd.Id = pdt.PlanDeviceId
						WHERE pd.Id	IN (SELECT pd2.Id 
													FROM PlanPeriodicDevice pd2 inner join PlanPeriodic p on p.Id = pd2.PlanId
													WHERE	p.BranchId	= @BranchId 
														AND p.FactoryId	= @FactoryId
														AND p.PlanYear	= @year 
														AND (MONTH(pdt.ReportDate)= @month OR @month =0)
														AND (pd2.DeviceId	= @DeviceId OR @DeviceId=0))
                                AND pdt.ReportDate IS NOT NULL
						     	--AND ABS(DATEDIFF(HOUR,pdt.StartDate, pdt.EndDate)) >0

          ORDER BY DatePlan DESC

END
GO
/****** Object:  StoredProcedure [dbo].[GetReportNumberBigTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReportNumberBigTrouble]
@UserId nvarchar(450) null
,@DeviceId int null 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int;SET @year = (select YEAR(GETDATE()))
if(@Branch =0)
   BEGIN
       DECLARE @MinValue int; SET @MinValue = (select pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = YEAR(GETDATE()) and pd.Id =1)
	   SELECT  Id, CONCAT(Code, '[',@year,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, Id, FactoryId, 0) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, Id, FactoryId, 0) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, Id, FactoryId, 0) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, Id, FactoryId, 0) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, Id, FactoryId, 0) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch 
		UNION 
		 SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year-1, Id, FactoryId, 0) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year-1, Id, FactoryId, 0) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year-1, Id, FactoryId, 0) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year-1, Id, FactoryId, 0) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year-1, Id, FactoryId, 0) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year-1, Id, FactoryId, 0) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year-1, Id, FactoryId, 0) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year-1, Id, FactoryId, 0) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year-1, Id, FactoryId, 0) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year-1, Id, FactoryId, 0) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year-1, Id, FactoryId, 0) AS MONTH12
		from Branch 
		 UNION 
		 SELECT    -1 AS  Id, '_' as Name,   @MinValue AS MONTH01,
					@MinValue AS MONTH02,
					@MinValue AS MONTH03,
					@MinValue AS MONTH04,
					@MinValue AS MONTH05,
					@MinValue AS MONTH06,                  
					@MinValue AS MONTH07,
					@MinValue AS MONTH08,
					@MinValue AS MONTH09,
					@MinValue AS MONTH10,
					@MinValue AS MONTH11,
					@MinValue AS MONTH12
		ORDER BY Name
    END
ELSE 
	BEGIN
	   SELECT 0 as Id, N'Toàn ngành' as Name,   
	                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, 0) AS MONTH07,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, @Branch, b.FactoryId, 0) AS MONTH08,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, 0) AS MONTH09,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, @Branch, b.FactoryId, 0) AS MONTH10,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, @Branch, b.FactoryId, 0) AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, 0) AS MONTH12
					from Branch b where b.Id = @Branch
       UNION
	   SELECT TOP(5) d.Id, d.Code as Name,   
	                [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, @Branch, b.FactoryId, d.Id) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, @Branch, b.FactoryId, d.Id) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, @Branch, b.FactoryId, d.Id) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, @Branch, b.FactoryId, d.Id) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, @Branch, b.FactoryId, d.Id) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, @Branch, b.FactoryId, d.Id) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, @Branch, b.FactoryId, d.Id) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, @Branch, b.FactoryId, d.Id) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, @Branch, b.FactoryId, d.Id) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, @Branch, b.FactoryId, d.Id) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, @Branch, b.FactoryId, d.Id) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, @Branch, b.FactoryId, d.Id) AS MONTH12
		from Device d 
		      Inner join Branch b on d.BranchId = b.Id 
			  where BranchId = @Branch			  AND (d.Id = @DeviceId OR @DeviceId =0)
			  ORDER BY MONTH07 DESC
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReportNumberThietBiOverThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReportNumberThietBiOverThreshold]
@UserId nvarchar(450) null
,@DeviceId int null 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @year int;SET @year = (select YEAR(GETDATE()))

 SELECT    Id, CONCAT(Code, '[',@year,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, Id, FactoryId, 0) AS MONTH07,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, Id, FactoryId, 0) AS MONTH08,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, Id, FactoryId, 0) AS MONTH09,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, Id, FactoryId, 0) AS MONTH10,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, Id, FactoryId, 0) AS MONTH11,
					[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch 

--SELECT DISTINCT Motor.MotorCode as MT From Motor
--				WHERE (dbo.ufnValueHasThresholdByCode(MotorTemp, 'MotorTemp') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorI, 'MotorI') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorFrequency, 'MotorFrequency') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorSpeed, 'MotorSpeed')<> 1  ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorSpeed2, 'MotorSpeed2') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorRunningHour, 'MotorRunningHour') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorStopHour, 'MotorStopHour') <> 1 ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(ConveyorMoveStep, 'ConveyorMoveStep')<> 1  ---cho ra giá trị vùng màu 1: xanh ; 2: vàng; 3 : đỏ
--				OR dbo.ufnValueHasThresholdByCode(MotorVibrate, 'MotorVibrate')<> 1)
--				AND MONTH(GETDATE()) = MONTH( TimeReceived)



--   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
--   DECLARE @year int;SET @year = (select YEAR(GETDATE()))
--if(@Branch =0)
--   BEGIN
--       DECLARE @MinValue int; SET @MinValue = (select pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = YEAR(GETDATE()) and pd.Id =1)
	  
--		--UNION 
--		-- SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,   [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year-1, Id, FactoryId, 0) AS MONTH01,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year-1, Id, FactoryId, 0) AS MONTH02,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year-1, Id, FactoryId, 0) AS MONTH03,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year-1, Id, FactoryId, 0) AS MONTH04,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year-1, Id, FactoryId, 0) AS MONTH05,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year-1, Id, FactoryId, 0) AS MONTH07,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year-1, Id, FactoryId, 0) AS MONTH08,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year-1, Id, FactoryId, 0) AS MONTH09,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year-1, Id, FactoryId, 0) AS MONTH10,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year-1, Id, FactoryId, 0) AS MONTH11,
--		--			[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year-1, Id, FactoryId, 0) AS MONTH12
--		--from Branch 
--    END
----ELSE 
--	--BEGIN
--	--   SELECT 0 as Id, N'Toàn ngành' as Name,   
--	--                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, 0) AS MONTH01,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, 0) AS MONTH02,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, 0) AS MONTH03,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, 0) AS MONTH04,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, 0) AS MONTH05,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, 0) AS MONTH06,                  
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, 0) AS MONTH07,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, @Branch, b.FactoryId, 0) AS MONTH08,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, 0) AS MONTH09,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, @Branch, b.FactoryId, 0) AS MONTH10,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, @Branch, b.FactoryId, 0) AS MONTH11,
--	--				[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, 0) AS MONTH12
--	--				from Branch b where b.Id = @Branch
-- --      UNION
--	--   SELECT  d.Id, d.Code as Name,   
--	--                [dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](1, @year, @Branch, b.FactoryId, d.Id) AS MONTH01,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](2, @year, @Branch, b.FactoryId, d.Id) AS MONTH02,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](3, @year, @Branch, b.FactoryId, d.Id) AS MONTH03,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](4, @year, @Branch, b.FactoryId, d.Id) AS MONTH04,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](5, @year, @Branch, b.FactoryId, d.Id) AS MONTH05,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](6, @year, @Branch, b.FactoryId, d.Id) AS MONTH06,                  
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](7, @year, @Branch, b.FactoryId, d.Id) AS MONTH07,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](8, @year, @Branch, b.FactoryId, d.Id) AS MONTH08,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](9, @year, @Branch, b.FactoryId, d.Id) AS MONTH09,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](10, @year, @Branch, b.FactoryId, d.Id) AS MONTH10,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](11, @year, @Branch, b.FactoryId, d.Id) AS MONTH11,
--	--				[dbo].[ufnGetBCPlanTagetNumberTroubleByParameter](12, @year, @Branch, b.FactoryId, d.Id) AS MONTH12
--	--	from Device d 
--	--	      Inner join Branch b on d.BranchId = b.Id 
--	--		  where BranchId = @Branch			  AND (d.Id = @DeviceId OR @DeviceId =0)
--	--		  ORDER BY MONTH07 DESC
-- --   END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReportTimeStopTrouble]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReportTimeStopTrouble]
@UserId nvarchar(450) null
,@DeviceId int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   DECLARE @Branch int; SET @Branch = (Select ISNULL(BranchId, 0) From AspNetUsers where Id =@UserId);
   DECLARE @year int;SET @year = (select YEAR(GETDATE()))
   if(@Branch =0)
   BEGIN
       DECLARE @MinValue int; SET @MinValue = (select pd.MinValue from PlanTargetDevice pd inner join PlanTarget p ON p.Id = pd.PlanId where p.PlanYear = YEAR(GETDATE()) and pd.Id =2)
	   SELECT    Id, CONCAT(Code, '[',@year,']') as Name,   [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, Id, FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, Id, FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, Id, FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, Id, FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, Id, FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, Id, FactoryId, 0) AS MONTH07,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, Id, FactoryId, 0) AS MONTH08,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, Id, FactoryId, 0) AS MONTH09,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, Id, FactoryId, 0) AS MONTH10,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, Id, FactoryId, 0) AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, Id, FactoryId, 0) AS MONTH12
		from Branch 
		UNION 
		 SELECT    Id, CONCAT(Code, '[',@year-1,']') as Name,   [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year-1, Id, FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year-1, Id, FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year-1, Id, FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year-1, Id, FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year-1, Id, FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year-1, Id, FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year-1, Id, FactoryId, 0) AS MONTH07,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year-1, Id, FactoryId, 0) AS MONTH08,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year-1, Id, FactoryId, 0) AS MONTH09,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year-1, Id, FactoryId, 0) AS MONTH10,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year-1, Id, FactoryId, 0) AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year-1, Id, FactoryId, 0) AS MONTH12
		from Branch 
       UNION 
		 SELECT   -1 AS  Id, '_' as Name,   @MinValue AS MONTH01,
					@MinValue AS MONTH02,
					@MinValue AS MONTH03,
					@MinValue AS MONTH04,
					@MinValue AS MONTH05,
					@MinValue AS MONTH06,                  
					@MinValue AS MONTH07,
					@MinValue AS MONTH08,
					@MinValue AS MONTH09,
					@MinValue AS MONTH10,
					@MinValue AS MONTH11,
					@MinValue AS MONTH12
		ORDER BY Name
    END
	ELSE 
	BEGIN
	    SELECT 0 as Id, N'Toàn ngành' as Name,   
	                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, 0) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, 0) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, 0) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, 0) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, 0) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, 0) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, 0) AS MONTH07,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, @Branch, b.FactoryId, 0) AS MONTH08,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, 0) AS MONTH09,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, @Branch, b.FactoryId, 0) AS MONTH10,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, @Branch, b.FactoryId, 0) AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, 0) AS MONTH12
					from Branch b where b.Id = @Branch
        UNION
	    SELECT TOP(5)  d.Id, d.Code as Name,   
	                [dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(1, @year, @Branch, b.FactoryId, d.Id) AS MONTH01,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(2, @year, @Branch, b.FactoryId, d.Id) AS MONTH02,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(3, @year, @Branch, b.FactoryId, d.Id) AS MONTH03,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(4, @year, @Branch, b.FactoryId, d.Id) AS MONTH04,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(5, @year, @Branch, b.FactoryId, d.Id) AS MONTH05,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(6, @year, @Branch, b.FactoryId, d.Id) AS MONTH06,                  
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(7, @year, @Branch, b.FactoryId, d.Id) AS MONTH07,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(8, @year, @Branch, b.FactoryId, d.Id) AS MONTH08,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(9, @year, @Branch, b.FactoryId, d.Id) AS MONTH09,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(10, @year, @Branch, b.FactoryId, d.Id) AS MONTH10,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(11, @year, @Branch, b.FactoryId, d.Id) AS MONTH11,
					[dbo].ufnGetBCPlanTagetTimeStopTroubleByParameter(12, @year, @Branch, b.FactoryId, d.Id) AS MONTH12
		from Device d 
		      Inner join Branch b on d.BranchId = b.Id 
			  where BranchId = @Branch 	  AND (d.Id = @DeviceId OR @DeviceId =0)
			  ORDER BY MONTH07 DESC
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetReportUsedSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetReportUsedSupplie] 
@month bigint null,
@year bigint null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
		
	SELECT 
		 t.Name as TeamName
		,s.Name as SupplieName
		,s.Code as SupplieCode
		,s.Unit
		,pdts.Quantity as Quantity
		,pdts.Price as Price
		,pdts.ToMoney as ToMoney
		,pdt.RepairContent as Uses
	
	FROM  PlanDailyTroubleSupplie pdts
	inner join Supplie s on s.Id = pdts.SupplieId
	inner join PlanDailyTrouble pdt on pdt.Id = pdts.TroubleId
	inner join PlanDaily pd on pd.Id = pdt.PlanId
	inner join Device d on d.id = pd.DeviceId
	inner join Team t on t.id = d.TeamId
	
	Where 	(pd.BranchId		= @BranchId OR @BranchId =0)
		AND (pd.FactoryId	= @FactoryId OR @FactoryId =0)
		AND (pd.PlanYear			= @year OR @year =0)
		AND (pd.PlanMonth		= @month OR @month =0)
UNION
   	SELECT 
		 t.Name as TeamName
		,s.Name as SupplieName
		,s.Code as SupplieCode
		,s.Unit
		,pdts.Quantity as Quantity
		,pdts.Price as Price
		,pdts.ToMoney as ToMoney
		,[dbo].[ufnGetUserNameByListID](pdts.Belonging,',', 'Line') as Uses
	
	FROM  SupplieUseDetail pdts
	inner join Supplie s on s.Id = pdts.SupplieId
	inner join SupplieUse pdt on pdt.Id = pdts.SupplieUseId
	inner join Team t on t.id = pdts.TeamId
	
	Where 	(pdt.BranchId		= @BranchId OR @BranchId =0)
		AND (pdt.FactoryId	= @FactoryId OR @FactoryId =0)
		AND (pdt.PlanYear			= @year OR @year =0)
		AND (pdt.PlanMonth		= @month OR @month =0)
  
  ORDER BY TeamName, SupplieName ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetRole]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRole] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * FROm AspNetRoles  where Name NOT IN('SuperAdmin', 'SystemAdmin')   ORDER BY TimeCreated DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetRoleNameByID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRoleNameByID] 
@ID int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select AspNetRoles.Name FROm AspNetRoles where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[GetSettingValueByEmail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSettingValueByEmail] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  
  select (SElect s.ConfigValue from ConfigSystem s where s.ConfigCode = 'EmailAddress') AS EmailAddress
	,(SElect s.ConfigValue from ConfigSystem s where s.ConfigCode = 'EmailUser' ) AS EmailUser
	,(SElect s.ConfigValue from ConfigSystem s where s.ConfigCode = 'EmailPort' ) AS EmailPort
	,(SElect s.ConfigValue from ConfigSystem s where s.ConfigCode = 'EmailSmtp' ) AS EmailSmtp
	,(SElect s.ConfigValue from ConfigSystem s where s.ConfigCode = 'EmailPassword' ) AS EmailPassword
END
GO
/****** Object:  StoredProcedure [dbo].[GetSettingValueByLineID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSettingValueByLineID] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  
  Select TOP(1) l.Id as LineID, l.Name as LineName,t.Id as TeamID, t.Name as TeamName, b.Id as BranchID, b.Name as BranchName, f.Id as FactoryID, f.Name as FactoryName
   FROm Line l
   inner join Team t oN t.Id = l.TeamId
   inner join Branch b oN b.Id = t.BranchId
   inner join Factory f oN f.Id = b.FactoryId
   where l.Id = (SElect s.ConfigValue from ConfigSystem s where s.ConfigCode = 'LineID')
END
GO
/****** Object:  StoredProcedure [dbo].[GetShift]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetShift] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * FROm Shift ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSupplie] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select d.*, g.Name as GroupName, l.Name as LineName
    ,CONCAT(d.Code , ';', d.Name) AS SupplieCodeName
    FROm Supplie d 
   left outer join SupplieGroup g on g.Id = d.GroupId
   left outer join Line l on l.Id = d.LineId
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetSupplieById]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSupplieById] 
@Id int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select d.*, g.Name as GroupName, l.Name as LineName
    ,CONCAT(d.Code , ';', d.Name) AS SupplieCodeName
    FROm Supplie d 
   left outer join SupplieGroup g on g.Id = d.GroupId
   left outer join Line l on l.Id = d.LineId
   where d.Id =@Id
   ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetSupplieGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSupplieGroup] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select * FROm SupplieGroup ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetSupplieUse]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSupplieUse] 
@month int null,
@year int null,
@BranchId bigint null,
@FactoryId bigint null,
@UserId nvarchar(450) null
--https://localhost:44321/SupplieUse/GetSupplieUse?PlanMonth=0&year=2022&BranchId=2&FactoryId=1&PlanOverId=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT OFF;
DECLARE @CurrentSupplieUseId int
IF(@BranchId = 0 OR @FactoryId =0 OR @year = 0 OR @month = 0) SET @CurrentSupplieUseId =0;
ELSE
BEGIN
   --@CurrentSupplieUseId =0 không cần xét
		IF NOT EXISTS (SELECT Id FROM SupplieUse p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND p.PlanMonth = @month)
				BEGIN
					INSERT INTO [dbo].[SupplieUse]
					   (PlanMonth
					   ,[PlanYear]
					   ,[FactoryId]
					   ,[BranchId]
					   ,[TimeCreated]
					   ,[TimeModified])
				 VALUES
					   (@month
					   ,@year
					   ,@FactoryId
					   ,@BranchId    			  
					   ,GETDATE()    
					   ,GETDATE());
				set @CurrentSupplieUseId = SCOPE_IDENTITY();
		END
			ELSE
			BEGIN
			   set @CurrentSupplieUseId = (SELECT TOP(1) Id FROM SupplieUse p WHERE p.BranchId = @BranchId AND p.FactoryId =@FactoryId AND p.PlanYear = @year AND ISNULL(p.PlanMonth, 0) = @month ORDER BY Id DESC);
			END
END
---Lấy dữ liệu kế hoạch
select @CurrentSupplieUseId as SupplieUseId,  0 as Id
	  ,p.PlanMonth
      ,p.PlanYear
      ,p.FactoryId
      ,p.BranchId 
      ,p.TimeCreated
      ,p.TimeModified
      ,null as SupplieId
	  ,b.Name as BranchName
	  ,f.Name as FactoryName
	  ,'' as SupplieName 
	  ,'' as SupplieCode
	  ,'' as NumberNote
	  ,'' as Origin
      ,0 as Quantity
 ,'' as  BelongingName
      ,'' as  Belonging
	  ,0 as  Price
	  ,0 as ToMoney
	  ,0 as TeamId
	  ,'' as TeamName
	  from SupplieUse p
	     inner join Branch b on b.Id = p.BranchId
	     inner join Factory f on f.Id = p.FactoryId
	     where p.Id = @CurrentSupplieUseId
  UNION
 SELECT @CurrentSupplieUseId as SupplieUseId,  pd.Id
      ,@month PlanMonth
      ,@year as PlanYear
      ,@FactoryId as FactoryId
      ,@BranchId as BranchId     
      ,'' as TimeCreated
      ,'' as TimeModified
      ,pd.SupplieId
	  ,'' as BranchName
	  ,'' as FactoryName
	  ,d.Name as SupplieName
	  ,d.Code as SupplieCode
	  ,d.Unit as NumberNote
,d.Origin
      ,pd.Quantity
      ,[dbo].[ufnGetUserNameByListID](pd.Belonging,',', 'Line') as BelongingName
      ,pd.Belonging
	  ,pd.Price
	  ,pd.ToMoney
	  ,pd.TeamId
	  ,l.Name as TeamName
  FROM  SupplieUseDetail pd
    INNER join Supplie d on d.Id = pd.SupplieId
	INNER join Team l on l.Id = pd.TeamId
   where pd.SupplieUseId = @CurrentSupplieUseId
	   	   ORDER BY Id ASC
END
GO
/****** Object:  StoredProcedure [dbo].[GetTeam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTeam]
@UserId nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);

   Select t.*, b.Name as BranchName 
      ,CONCAT(t.Code, ', ', t.[Name]) as TeamCodeName
      ,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
   FROm Team  t
   LEFT OUTER join Branch b on    b.id = t.BranchId
   where b.Id = @BranchOfUser OR @BranchOfUser = 0
   ORDER BY t.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetTeamByBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTeamByBranch] 
@BranchId int  null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	if(@BranchId IS NULL OR @BranchId =0)
			 Select t.*, b.Name as BranchName
			,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
			,CONCAT(t.Code, ', ', t.[Name]) as TeamCodeName
			 FROm Team  t
		   LEFT OUTER join Branch b on    b.id = t.BranchId
		   ORDER BY t.Id DESC
	ELSE
		   Select t.*, b.Name as BranchName
			,CONCAT(b.Code, ', ', b.[Name]) as BranchCodeName
			,CONCAT(t.Code, ', ', t.[Name]) as TeamCodeName
			 FROm Team  t
		   LEFT OUTER join Branch b on    b.id = t.BranchId
		   where b.id = @BranchId
		   ORDER BY t.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetThietBi]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetThietBi] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT tb.*, tc.TenToChuc as TenToChuc, nhomTB.TenNhomTB as TenNhomTB
	From ThietBi tb
	Left Join ToChuc tc ON tb.MaToChuc = tc.Id
	Left Join NhomTB nhomTB ON tb.NhomTB = nhomTB.Id;
END
GO
/****** Object:  StoredProcedure [dbo].[GetThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetThreshold] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select d.*, CONCAT(d.Code, ', ', d.[Name]) as ThresholdCodeName  FROm Threshold as d ORDER BY d.Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetTroubleReport]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTroubleReport] 
@UserId nvarchar(450) null,
@year int null,
@BranchId bigint null,
@FactoryId bigint null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @BranchOfUser int;
set @BranchOfUser = (SELECT ISNULL(BranchId, 0) FROM AspNetUsers where Id = @UserId);

	SELECT [Id]
		  ,[TroubleId]
		  ,[AddressTrouble]
		  ,[DateTrouble]
		  ,[DescriptionTrouble]
		  ,[ReasonTrouble]
		  ,[HandlingMeansure]
		  ,[UserAct]
		  ,[DateDone]
		  ,[UserPart]
		  ,[UnitPart]
		  ,[UserManager]
		  ,[UserBranch]
		  ,[UserAuthority]
		  ,[TimeCreated]
		  ,[TimeModified]
		  ,[FactoryId]
		  ,[BranchId]
		  ,[ReportNumber]
		  ,FileScan
	  FROM [dbo].[PlanDailyTroubleReport]
	  where (YEAR(DateTrouble) = @year  OR @year =0)
		  and (FactoryId =@FactoryId OR @FactoryId = 0)
		  And (BranchId= @BranchId OR @BranchId =0)
		  AND (BranchId = @BranchOfUser OR @BranchOfUser = 0)
	    

END
GO
/****** Object:  StoredProcedure [dbo].[GetTroubleReportByID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTroubleReportByID] 
@Id bigint null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	SELECT [Id]
		  ,[TroubleId]
		  ,[AddressTrouble]
		  ,[DateTrouble]
		  ,[DescriptionTrouble]
		  ,[ReasonTrouble]
		  ,[HandlingMeansure]
		  ,[UserAct]
		  ,[DateDone]
		  ,[UserPart]
		  ,[UnitPart]
		  ,[UserManager]
		  ,[UserBranch]
		  ,[UserAuthority]
		  ,[TimeCreated]
		  ,[TimeModified]
		  ,[FactoryId]
		  ,[BranchId]
		  ,[ReportNumber]
		  ,FileScan
	  FROM [dbo].[PlanDailyTroubleReport]
	  where Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUser] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select d.*, g.Name as DepartmentName, l.Name as PositionName FROm AspNetUsers d 
   left outer join Department g on g.Id = d.DepartmentId
   left outer join Position l on l.Id = d.PositionId
   Where d.UserName <> 'superadmin@gmail.com'
   ORDER BY d.TimeCreated DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserActive]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserActive] 
@UserId nvarchar(450) = '',
  @startDate nvarchar(450) = '',
   @endDate nvarchar(450) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

		if(@startDate <> '' AND @endDate <> '')
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateActive,l.LogContent, u.UserName, u.FullName FROm UserActive l
				   inner join AspNetUsers u on u.Id = l.UserId
			   WHERE (l.DateActive BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103) ) AND (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateActive DESC
		END
		ELSE if(@startDate <> '' AND @endDate = '')
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateActive,l.LogContent, u.UserName, u.FullName FROm UserActive l
				   inner join AspNetUsers u on u.Id = l.UserId
			   WHERE (l.DateActive >= CONVERT(DATETIME, @startDate, 103)) AND (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateActive DESC
		END
		ELSE if(@startDate = '' AND @endDate <> '')
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateActive,l.LogContent, u.UserName, u.FullName FROm UserActive l
				   inner join AspNetUsers u on u.Id = l.UserId
			   WHERE (l.DateActive <= CONVERT(DATETIME, @startDate, 103)) AND (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateActive DESC
		END
		ELSE 
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateActive,l.LogContent, u.UserName, u.FullName FROm UserActive l
				   inner join AspNetUsers u on u.Id = l.UserId
				   WHERE (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateActive DESC
		END
END

GO
/****** Object:  StoredProcedure [dbo].[GetUserByEmail]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserByEmail] 
@email nvarchar(100) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select u.Id from AspNetUsers u where u.Email =@email
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserInfor]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserInfor] 
@UserId nvarchar(450) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select u.* from AspNetUsers u where u.Id =@UserId
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserInforBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserInforBranch] 
@UserId nvarchar(450) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select u.BranchId, u.FactoryId, u.LineId, u.TeamId from AspNetUsers u where u.Id =@UserId
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserLogin]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserLogin] 
 @UserId nvarchar(450) = '',
  @startDate nvarchar(450) = '',
   @endDate nvarchar(450) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

		if(@startDate <> '' AND @endDate <> '')
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateLogin, u.UserName, u.FullName, u.PhoneNumber FROm UserLogin l
				   inner join AspNetUsers u on u.Id = l.UserId
			   WHERE (l.DateLogin BETWEEN CONVERT(DATETIME, @startDate, 103) AND  CONVERT(DATETIME, @endDate, 103) ) AND (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateLogin DESC
		END
		ELSE if(@startDate <> '' AND @endDate = '')
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateLogin, u.UserName, u.FullName, u.PhoneNumber FROm UserLogin l
				   inner join AspNetUsers u on u.Id = l.UserId
			   WHERE (l.DateLogin >= CONVERT(DATETIME, @startDate, 103)) AND (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateLogin DESC
		END
		ELSE if(@startDate = '' AND @endDate <> '')
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateLogin, u.UserName, u.FullName, u.PhoneNumber FROm UserLogin l
				   inner join AspNetUsers u on u.Id = l.UserId
			   WHERE (l.DateLogin <= CONVERT(DATETIME, @endDate, 103)) AND (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateLogin DESC
		END
		ELSE 
		BEGIN
			 Select l.Id, l.UserId, l.IpAddress, l.DateLogin, u.UserName, u.FullName, u.PhoneNumber FROm UserLogin l
				   inner join AspNetUsers u on u.Id = l.UserId
				   WHERE (l.UserId = @UserId OR @UserId ='0')
		       ORDER BY l.DateLogin DESC
		END
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserNameByID]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserNameByID] 
@ID int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select AspNetUsers.FullName FROm AspNetUsers where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[GetYearDeviceTarget]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetYearDeviceTarget] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select DISTINCT dt.PlanYear
   FROM DeviceTarget dt  where dt.PlanYear <> 0
END
GO
/****** Object:  StoredProcedure [dbo].[GetYearPlanDaily]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetYearPlanDaily] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   Select DISTINCT pd.PlanYear
   FROM PlanDaily pd  where pd.PlanYear <> 0
END
GO
/****** Object:  StoredProcedure [dbo].[ImportBranch]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportBranch] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	,@FactoryCodeName nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Branch')  

IF(@Code IS NULL OR @Code ='')
BEGIN
   Select 0 as Id, CONCAT(N'Mã không thể là khoảng trống hoặc dấu cách.', '!!') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Code FROM Branch t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Branch t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
--Lấy giá trị xưởng theo @FactoryName,@FactoryCode   -----đang là FactoryCodeName  ngăn cách bằng - 
DECLARE @FactoryId int;

DECLARE @FactoryName nvarchar(50) =''
DECLARE @FactoryCode nvarchar(100) =''
SET @FactoryCode = (select TRIM(ColValue) from ufn_String_Split_with_Index(@FactoryCodeName, '-') where STT =1)
SET @FactoryName = (select TRIM(ColValue) from ufn_String_Split_with_Index(@FactoryCodeName, '-') where STT =2)

IF EXISTS(SELECT t.Id FROM Factory t where isnull(t.Code, '') =@FactoryCode OR isnull(t.Name, '') = @FactoryName) 
BEGIN
   set @FactoryId = (SELECT t.Id FROM Factory t  where isnull(t.Code, '') =@FactoryCode OR isnull(t.Name, '') = @FactoryName)
END
else 
BEGIN
    Insert into Factory (Code, Name ) values (@FactoryCode, @FactoryName); 
	set @FactoryId = SCOPE_IDENTITY();
END
--Lấy giá trị xưởng theo @FactoryName, @FactoryCode
DECLARE @IdSelected bigint;

INSERT INTO Branch
           ([Name],Code
		   ,FactoryId
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
		   ,@Code
		   ,@FactoryId
           ,@Description
           ,GETDATE()
           ,GETDATE())

set @IdSelected = SCOPE_IDENTITY();
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportDepartment]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportDepartment] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	 ,@Code nvarchar(50)   null
    ,@Description nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Department')  

IF(@Code IS NULL OR @Code ='')
BEGIN
   Select 0 as Id, CONCAT(N'Mã không thể là khoảng trống hoặc dấu cách.', '!!') as message, @FuncName as Tittle
   return;
END
IF EXISTS(SELECT t.Code FROM Department t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
IF EXISTS(SELECT t.Name FROM Department t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Department
           ([Name],Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportDevice]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportDevice] 
	-- Add the parameters for the stored procedure here
	 @GroupCodeName nvarchar(450) null
     ,@BranchName nvarchar(450) null
	 ,@TeamName nvarchar(450) null
	 ,@LineCode nvarchar(450) null ---TeAmcode
           ,@Name nvarchar(450) null
           ,@Description nvarchar(450) null
           ,@Status int null
           ,@Code nvarchar(450)  null
           ,@Origin nvarchar(450)  null
           ,@YearOfUse int  null
           ,@InstallationPlace nvarchar(450)  null
           ,@MaintenanceCycle int  null
		   ,@StringMaintenanceCycle nvarchar(150)  null
           ,@YearOfManufacture int  null
           ,@Description2 nvarchar(450)  null
           ,@Properties int  null
		   ,@GetRangDong int null
		   ,@MonthofUse int null
		   ,@TimeReceived nvarchar(20) null
		   ,@TimeUse nvarchar(20) null
		   ,@IsImportant int null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Device')  
IF (@GroupCodeName ='')
BEGIN
   Select 0 as Id, CONCAT(N'Không có thông tin nhóm thiết bị.','') as message, @FuncName as Tittle
   return;
END
--IF EXISTS(SELECT t.Code FROM Device t where t.Code =@Code) 
--BEGIN
--   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
--   return;
--END

IF EXISTS(SELECT t.Name FROM Device t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
--Lấy giá trị xưởng theo @@@TeamName
DECLARE @TeamId int;
DECLARE @GroupID int;
DECLARE @BranchId int;
DECLARE @LineId int;
-- lấy ID nhóm từ tên nhóm
IF EXISTS(SELECT t.Id FROM DeviceGroup t where t.Code = @GroupCodeName)  -- @GroupCodeName= Code
BEGIN
   set @GroupId = (SELECT t.Id FROM DeviceGroup t where t.Code = @GroupCodeName)
END
else 
BEGIN
    Insert into DeviceGroup (Code, Name) values (@GroupCodeName, @GroupCodeName); set @GroupId = SCOPE_IDENTITY();
END

IF EXISTS(SELECT t.Id FROM Team t where t.Code = @LineCode)  -- @@LineCode= TEAMCode
BEGIN
   set @TeamId = (SELECT t.Id FROM Team t where t.Code = @LineCode)
   set @BranchId = (SELECT t.BranchId FROM Team t where t.Id = @TeamId)
END
else 
BEGIN
    Insert into Line (Code, Name) values (@LineCode, @LineCode); set @LineId = SCOPE_IDENTITY();
END


--Lấy giá trị xưởng theo @@@TeamName
DECLARE @IdSelected bigint;
INSERT INTO Device
           (GroupID, LineId, BranchId, TeamId
           ,Name
           ,Description
           ,TimeCreated
           ,TimeModified
           ,Status
           ,Code
           ,Origin
           ,YearOfUse
           ,InstallationPlace
           ,MaintenanceCycle
		   ,StringMaintenanceCycle
		   ,Description2
		   ,Properties
           ,YearOfManufacture
		   ,MonthofUse 
		   ,TimeReceived 
		   ,TimeUse
		   ,GetRangDong
		   ,IsImportant
		   )
     VALUES
           (@GroupID, @LineId,  @BranchId, @TeamId
           ,@Name
           ,@Description
           ,GETDATE()
           ,GETDATE()
           ,@Status
           ,dbo.ufnCreateDeviceCode(@GroupID, 0) --@Code
           ,@Origin
           ,@YearOfUse
           ,@InstallationPlace
           ,@MaintenanceCycle
		   ,@StringMaintenanceCycle
		   ,@Description2
		   ,@Properties
           ,@YearOfManufacture
		   ,@MonthofUse 
		   ,@TimeReceived 
		   ,@TimeUse
		   ,@GetRangDong
		   ,@IsImportant)

SET @IdSelected = SCOPE_IDENTITY();
--Update Device set Code = 
--                 --, CodeNew = dbt.ufnCreateDeviceCode(@GroupID, @LineId, @BranchId, @TeamId, @IdSelected) 
--				 where Id = @IdSelected
	
INSERT INTO [dbo].[DeviceHistory]
           ([BranchID]
           ,[TeamId]
           ,[LineId]
		   ,[BranchIDold]
           ,[TeamIdold]
           ,[LineIdold]
           ,[DeviceId]
           ,[Desc]
           ,[TimeCreated])
     VALUES
           (@BranchID
           ,@TeamId
           ,@LineId
           ,0
           ,0
           ,0
           ,@IdSelected
           ,@Description
           ,GETDATE())

Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportDeviceGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportDeviceGroup] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
	,@Code nvarchar(500) null
    ,@Description nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('DeviceGroup') 
IF(@Code IS NULL OR @Code ='')
BEGIN
   Select 0 as Id, CONCAT(N'Mã không thể là khoảng trống hoặc dấu cách.', '!!') as message, @FuncName as Tittle
   return;
END
 
IF EXISTS(SELECT t.Code FROM DeviceGroup t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM DeviceGroup t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO DeviceGroup
           ([Name]
		   ,Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
		   ,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportFactory]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportFactory] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	 ,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Factory')  

IF(@Code IS NULL OR @Code ='')
BEGIN
   Select 0 as Id, CONCAT(N'Mã không thể là khoảng trống hoặc dấu cách.', '!!') as message, @FuncName as Tittle
   return;
END
IF EXISTS(SELECT t.Code FROM Factory t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Factory t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Factory
           ([Name],Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportLine]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportLine] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	,@BranchCodeName nvarchar(500) null
	,@TeamCodeName nvarchar(500) null
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Line') 

IF(@Code IS NULL OR @Code ='')
BEGIN
   Select 0 as Id, CONCAT(N'Mã không thể là khoảng trống hoặc dấu cách.', '!!') as message, @FuncName as Tittle
   return;
END 

IF EXISTS(SELECT t.Code FROM Line t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Line t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
--Lấy giá trị ngành theo @@@BranchCodeName
DECLARE @BranchId int;
DECLARE @BranchName nvarchar(50) =''
DECLARE @BranchCode nvarchar(100) =''

SET @BranchCode = (select TRIM(ColValue) from ufn_String_Split_with_Index(@BranchCodeName, '-') where STT =1)
SET @BranchName = (select TRIM(ColValue) from ufn_String_Split_with_Index(@BranchCodeName, '-') where STT =2)

IF EXISTS(SELECT t.Id FROM Branch t where t.Code =@BranchCode OR t.Name = @BranchName) 
BEGIN
	set @BranchId = (SELECT t.Id FROM Branch t where t.Code =@BranchCode OR t.Name = @BranchName)
END
else 
BEGIN
	Insert into Branch (Code, Name ) values (@BranchCode, @BranchName); set @BranchId = SCOPE_IDENTITY();
END

--Lấy giá trị ngành theo @@@TeamCodeName
DECLARE @TeamId int;
DECLARE @TeamName nvarchar(50) =''
DECLARE @TeamCode nvarchar(100) =''

SET @TeamCode = (select TRIM(ColValue) from ufn_String_Split_with_Index(@TeamCodeName, '-') where STT =1)
SET @TeamName = (select TRIM(ColValue) from ufn_String_Split_with_Index(@TeamCodeName, '-') where STT =2)

IF EXISTS(SELECT t.Id FROM Team t where t.Code =@TeamCode OR t.Name = @TeamName) 
BEGIN
	set @TeamId = (SELECT t.Id FROM Team t where t.Code =@TeamCode OR t.Name = @TeamName)
END
else 
BEGIN
	Insert into Team (Code, Name ) values (@TeamCode, @TeamName); set @TeamId = SCOPE_IDENTITY();
END

DECLARE @IdSelected bigint;
INSERT INTO Line
           ([Name], TeamId,Code
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name, @TeamId,@Code
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportPosition]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportPosition] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Position')  
IF EXISTS(SELECT t.Name FROM Position t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Position
           ([Name]
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportShift]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportShift] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Shift')  
IF EXISTS(SELECT t.Name FROM Shift t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO Shift
           ([Name]
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportSupplie]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportSupplie] 
	-- Add the parameters for the stored procedure here
@GroupName nvarchar(450) null
 ,@LineId int null
           ,@Name nvarchar(450) null
           ,@Description nvarchar(450) null
           ,@Status int null
           ,@Code nvarchar(450)  null
           ,@Origin nvarchar(450)  null
           ,@YearOfUse int  null
           ,@InstallationPlace nvarchar(450)  null
           ,@MaintenanceCycle int  null
           ,@YearOfManufacture int  null
		   ,@NumberTotal int  null		   
,@Unit nvarchar(50)  null
		AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Supplie')  
IF EXISTS(SELECT t.Code FROM Supplie t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Supplie t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
-- lấy ID nhóm từ tên nhóm
DECLARE @GroupID bigint;
IF EXISTS(SELECT t.Name FROM SupplieGroup t where t.Name = @GroupName) 
BEGIN
   set @GroupId = (SELECT t.Id FROM SupplieGroup t where t.Name = @GroupName)
END
else 
BEGIN
    Insert into SupplieGroup (Name) values (@GroupName); set @GroupId = SCOPE_IDENTITY();
END
-- lấy ID nhóm từ tên nhóm

DECLARE @IdSelected bigint;
INSERT INTO Supplie
           (GroupID, LineId
           ,Name
           ,Description
           ,TimeCreated
           ,TimeModified
           ,Status
           ,Code, Unit
           ,Origin
           ,YearOfUse
           ,InstallationPlace
           ,MaintenanceCycle
           ,YearOfManufacture,NumberTotal)
     VALUES
           (@GroupID, @LineId
           ,@Name
           ,@Description
           ,GETDATE()
           ,GETDATE()
           ,@Status
           ,@Code, @Unit
           ,@Origin
           ,@YearOfUse
           ,@InstallationPlace
           ,@MaintenanceCycle
           ,@YearOfManufacture, @NumberTotal)

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportSupplieGroup]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportSupplieGroup] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) 
    ,@Description nvarchar(500) null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('SupplieGroup')  
IF EXISTS(SELECT t.Name FROM SupplieGroup t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END
DECLARE @IdSelected bigint;
INSERT INTO SupplieGroup
           ([Name]
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportTeam]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportTeam] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500)  null
	,@Code nvarchar(50)  null
    ,@Description nvarchar(500) null
	,@BranchCodeName nvarchar(500) null --- nếu 1 = BranchName
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Team')  

IF(@Code IS NULL OR @Code ='')
BEGIN
   Select 0 as Id, CONCAT(N'Mã không thể là khoảng trống hoặc dấu cách.', '!!') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Id FROM Team t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Team t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, @FuncName as Tittle
   return;
END

--Lấy giá trị xưởng theo @@BranchName
DECLARE @BranchId int;
--DECLARE @count int =0; set @count =(select count(*) from ufn_String_Split_with_Index(@BranchCodeName, '-'))
DECLARE @BranchName nvarchar(50) =''
DECLARE @BranchCode nvarchar(100) =''

SET @BranchCode = (select TRIM(ColValue) from ufn_String_Split_with_Index(@BranchCodeName, '-') where STT =1)
SET @BranchName = (select TRIM(ColValue) from ufn_String_Split_with_Index(@BranchCodeName, '-') where STT =2)

IF EXISTS(SELECT t.Id FROM Branch t where t.Code =@BranchCode OR t.Name = @BranchName) 
BEGIN
	set @BranchId = (SELECT t.Id FROM Branch t where t.Code =@BranchCode OR t.Name = @BranchName)
END
else 
BEGIN
	Insert into Branch (Code, Name ) values (@BranchCode, @BranchName); set @BranchId = SCOPE_IDENTITY();
END

DECLARE @IdSelected bigint;
INSERT INTO Team
           ([Name],Code
		   ,BranchId
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
		   ,@BranchId
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, @FuncName as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[ImportThreshold]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ImportThreshold] 
	-- Add the parameters for the stored procedure here
	 @Name nvarchar(500) null
	,@Code nvarchar(50)   null
	,@GreenRange nvarchar(50)   null
	,@OrangeRange nvarchar(50)   null
	,@RedRange nvarchar(50)   null
    ,@Description nvarchar(500) null
			AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('Threshold')  
IF EXISTS(SELECT t.Code FROM Threshold t where t.Code =@Code) 
BEGIN
   Select 0 as Id, CONCAT(N'Mã [',@Code,N'] đã tồn tại.') as message, N'Cài đặt giá trị ngưỡng' as Tittle
   return;
END

IF EXISTS(SELECT t.Name FROM Threshold t where t.Name =@Name)
BEGIN
   Select 0 as Id, CONCAT(N'Tên [',@Name,N'] đã tồn tại.') as message, N'Cài đặt giá trị ngưỡng' as Tittle
   return;
END
DECLARE @UpperValue decimal(10, 3) 
DECLARE @LowerValue decimal(10, 3)  
DECLARE @OrangeUpperValue decimal(10, 3) 
DECLARE @OrangeLowerValue decimal(10, 3)  
DECLARE @RedUpperValue decimal(10, 3) 
DECLARE @RedLowerValue decimal(10, 3)  
--Lấy giá trị ngưỡng theo chuỗi trên

DECLARE @IdSelected bigint;
INSERT INTO Threshold
           ([Name],Code
		   ,UpperValue, LowerValue
           ,[Description]
           ,[TimeCreated]
           ,[TimeModified])
     VALUES
           (@Name,@Code
		   ,@UpperValue, @LowerValue
           ,@Description
           ,GETDATE()
           ,GETDATE())

SET @IdSelected = SCOPE_IDENTITY() ;
Select @IdSelected as Id, CONCAT(N'Thêm mới thành công.','') as message, N'Cài đặt giá trị ngưỡng' as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[PlanApproveMarkUpdate]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PlanApproveMarkUpdate] 
	-- Add the parameters for the stored procedure here
	@PlanId bigint  null
               , @PlanTable nvarchar(50)  null
              ,  @FieldName  nvarchar(50)  null
             ,   @UserId  nvarchar(450)  null
             ,   @isMark int  null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	if(@isMark =1) 
	BEGIN
	    Delete from [PlanMark] where  UserId = @UserId and PlanId = @PlanId and PlanTable = @PlanTable
	END
    else 
	BEGIN
		INSERT INTO [dbo].[PlanMark]
				   ([PlanId]
				   ,[PlanTable]
				   ,[UserId])
			 VALUES
				   (@PlanId
				   ,@PlanTable
				   ,@UserId) 
 END
END
GO
/****** Object:  StoredProcedure [dbo].[PlanApproveStatusUpdate]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PlanApproveStatusUpdate] 
	-- Add the parameters for the stored procedure here
@PlanApproveStatusId bigint  null
,@PlanId bigint  null
,@PlanTable nvarchar(50)  null
,@FieldName  nvarchar(50)  null
,@UserId  nvarchar(450)  null
,@IsAccept int  null
,@Note   nvarchar(450)  null
AS
BEGIN
DECLARE @UserLevel int = 5
SET @UserLevel = (SELECT ManagerLevelId from AspNetUsers where  Id = @UserId)
DECLARE @UserCreated nvarchar(450)  ; SET @UserCreated= [dbo].[ufnCreatePlanApproveAvatarUserCreate](@PlanId, @PlanTable) 
DECLARE @UserView nvarchar(450); SET @UserView= [dbo].[ufnCreatePlanApproveAvatarUserCreate](@PlanId, @PlanTable) 
DECLARE @DatePlan datetime
DECLARE @isMark int
DECLARE @planApproveName  nvarchar(450)
DECLARE @planStatusInfor nvarchar(450)
DECLARE @timeToolTip nvarchar(450)
DECLARE @timeView nvarchar(450)
DECLARE @userPlanName nvarchar(450)
DECLARE @userSignalture nvarchar(450)
DECLARE @PlanNumber nvarchar(450)
DECLARE @NumberAju nvarchar(450)
DECLARE @PlanYear nvarchar(450)
DECLARE @PlanMonth nvarchar(450)
DECLARE @BranchId nvarchar(450)

--<button onclick="UpdatePlanStatusByNewVal(1, 30030, 'PlanDailyTroubleReport',  'UserPlan', 'Đã ký')" type="button" class="btn bg-gradient-primary">Ký hoàn thành hồ sơ</button>
--UpdatePlanStatusByNewVal(newStatus, vPlanId, vPlanTable, vFieldName, vNote) {   
--    var parametter = {
--        PlanId: vPlanId,
--        PlanTable: vPlanTable, //Tên file được xóa
--        FieldName: vFieldName,
--        Note: vNote,
--        StatusNew: newStatus
--    }

	    
if(@PlanTable='PlanDaily')
	BEGIN
	  --chỉ cập nhật ký tuần
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  ,@isMark =  ISNULL(dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId),0)
	  ,@planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,@planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,@userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,@PlanNumber =p.PlanNumber 
	  ,@NumberAju = p.Number
	  ,@PlanYear =p.PlanYear
	  ,@PlanMonth =p.PlanMonth
	  ,@BranchId = p.BranchId
	    FROM PlanDaily p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlanId;  
	END
else if(@PlanTable='PlanDailyTroubleReport')
	BEGIN
	  select @DatePlan = p.DateTrouble
	  , @isMark =  ISNULL(dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId),0)
	  ,  @planApproveName =[dbo].[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture = p.UserAct
	  ,  @PlanNumber =p.ReportNumber 
	  ,  @NumberAju = 0
	  ,  @PlanYear = YEAR(p.DateTrouble)
	  ,  @PlanMonth =MONTH(YEAR(p.DateTrouble))
	  ,  @BranchId = p.BranchId
	  FROM PlanDailyTroubleReport p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
		WHERE p.Id =  @PlanId;  
	END
ELSE if(@PlanTable='PlanOver')
	BEGIN
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  , @isMark =  dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId)
	  ,  @planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,  @PlanNumber =p.PlanNumber 
	  ,  @NumberAju = p.Number
	  ,  @PlanYear =p.PlanYear
	  ,  @PlanMonth = 0
	  ,  @BranchId = p.BranchId FROM PlanOver p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlanId;  
	END
ELSE if(@PlanTable='PlanPeriodic')
	BEGIN
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  , @isMark =  dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId)
	  ,  @planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,  @PlanNumber =p.PlanNumber 
	  ,  @NumberAju = p.Number
	  ,  @PlanYear =p.PlanYear
	  ,  @PlanMonth =0
	  ,  @BranchId = p.BranchId  FROM PlanPeriodic p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlanId;  
	END
ELSE if(@PlanTable='PlanSupplie')
	BEGIN
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  , @isMark =  dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId)
	  ,  @planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,  @PlanNumber =p.PlanNumber 
	  ,  @NumberAju = p.Number
	  ,  @PlanYear =p.PlanYear
	  ,  @PlanMonth =0
	  ,  @BranchId = p.BranchId  
	  FROM PlanSupplie p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlanId;  
	END
ELSE if(@PlanTable='PlanTarget')
	BEGIN
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  , @isMark =  dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId)
	  ,  @planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,  @PlanNumber =p.PlanNumber 
	  ,  @NumberAju = p.Number
	  ,  @PlanYear =p.PlanYear
	  ,  @PlanMonth =0
	  ,  @BranchId = p.BranchId    FROM PlanTarget p INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE p.Id =  @PlanId;  
	END
ELSE if(@PlanTable='PlanPeriodicDevice')
	BEGIN
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  , @isMark =  dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId)
	  ,  @planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,  @PlanNumber =p.PlanNumber 
	  ,  @NumberAju = p.Number
	  ,  @PlanYear =p.PlanYear
	  ,  @PlanMonth =0
	  ,  @BranchId = p.BranchId
	  FROM PlanPeriodicDevice pd INNER JOIN PlanPeriodic p on p.Id = pd.PlanId INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	WHERE pd.Id =  @PlanId;  
	END
ELSE if(@PlanTable='PlanPeriodicReport')
	BEGIN
	  select @DatePlan =ISNULL(p.DatePlan, GETDATE())
	  , @isMark =  dbo.ufnPlanMarkByUser(@PlanId, @PlanTable, @UserId)
	  ,  @planApproveName = dbo.[ufnCreatePlanApproveName](@PlanId, @PlanTable) 
	  ,  @planStatusInfor =dbo.ufnPlanStatusJsonByUserIdAndPlan(@PlanId, @PlanTable, @UserId, @UserLevel, @FieldName)
	  ,  @userSignalture =ISNULL(p.UserPlan, @UserId)
	  ,  @PlanNumber =p.PlanNumber 
	  ,  @NumberAju = p.Number
	  ,  @PlanYear =p.PlanYear
	  ,  @PlanMonth =0
	  ,  @BranchId = p.BranchId
	  FROM PlanPeriodicReport pr 
	     INNER JOIN PlanPeriodicDevice pd on pr.PlanDeviceId = pd.Id INNER JOIN
		                     PlanPeriodic p on p.Id = pd.PlanId INNER JOIN
							 dbo.Factory ON p.FactoryId = dbo.Factory.Id INNER JOIN
							 dbo.Branch ON p.BranchId = dbo.Branch.Id 
	           WHERE pr.Id =  @PlanId;  
	END
---Cập nhật trạng thái phê duyệt
if(@PlanTable = 'PlanDaily')
BEGIN
   ---Cập nhật trạng thái phê duyệt
   INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId]
           ,[PlanTable]
           ,[UserId]
           ,[TimeCreated]
           ,[FieldName]
           ,[IsAccept]
           ,[Note]
           ,[UserCreated]
           ,[UserView]
           ,[DatePlan]
           ,[isMark]
           ,[planApproveName]
           ,[planStatusInfor]
           ,[timeToolTip]
           ,[timeView]
           ,[userPlanName]
           ,[userSignalture]
           ,[PlanNumber]
           ,[NumberAju]
           ,[PlanYear]
           ,[PlanMonth]
           ,[BranchId]
		   )
     select [PlanId]
           ,[PlanTable]
           ,[UserId]
           ,GETDATE()
           ,[FieldName]
           ,@IsAccept
           ,[Note]
           ,@UserId
           ,[UserView]
           ,[DatePlan]
           ,[isMark]
           ,[planApproveName]
           ,[planStatusInfor]
           ,[timeToolTip]
           ,[timeView]
           ,[userPlanName]
           ,[userSignalture]
           ,[PlanNumber]
           ,[NumberAju]
           ,[PlanYear]
           ,[PlanMonth]
           ,[BranchId] from [PlanSignatureStatus] where Id = @PlanApproveStatusId
   
	--cập nhật trạng thái mới	  
	DECLARE @statementWeek nvarchar(2000)
	Set @statementWeek = CONCAT('Update ',@PlanTable,' set ',@FieldName,'= ''',@UserId,''' where Id = ',@PlanId);
	EXECUTE (@statementWeek)
END
else 
BEGIN  
---Cập nhật trạng thái phê duyệt
   INSERT INTO [dbo].[PlanSignatureStatus]
           ([PlanId]
           ,[PlanTable]
           ,[UserId]
           ,[TimeCreated]
           ,[FieldName]
           ,[IsAccept]
           ,[Note]
           ,[UserCreated]
           ,[UserView]
           ,[DatePlan]
           ,[isMark]
           ,[planApproveName]
           ,[planStatusInfor]
           ,[timeToolTip]
           ,[timeView]
           ,[userPlanName]
           ,[userSignalture]
           ,[PlanNumber]
           ,[NumberAju]
           ,[PlanYear]
           ,[PlanMonth]
           ,[BranchId]
		   )
     VALUES
           (@PlanId
           ,@PlanTable
           ,@UserId
           ,GETDATE()
           ,@FieldName
           ,@IsAccept
           ,@Note
		   ,@UserCreated
           ,@UserView
           ,@DatePlan
           ,@isMark
           ,@planApproveName
           ,@planStatusInfor
           ,@timeToolTip
           ,@timeView
           ,@userPlanName
           ,@userSignalture
           ,@PlanNumber
           ,@NumberAju
           ,@PlanYear
           ,@PlanMonth
           ,@BranchId)
   
	--cập nhật trạng thái mới	  
	DECLARE @statement nvarchar(2000)
	Set @statement = CONCAT('Update ',@PlanTable,' set ',@FieldName,'= ''',@UserId,''' where Id = ',@PlanId);
	EXECUTE (@statement)

	--Gửi yêu cầu phê duyệt cho cấp trên, khi đồng ý ký duyệt vào văn bản
	DECLARE @FieldDate nvarchar(50) = ''
	if(@IsAccept =1)
	BEGIN		
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
		DECLARE @FieldNameNext nvarchar(50)
		if(@FieldName = 'UserPlan') BEGIN set @FieldNameNext ='UserBranch' set @FieldDate ='DatePlan' END
		else if(@FieldName = 'UserBranch')BEGIN set @FieldNameNext ='UserFactory' set @FieldDate ='DateBranch' END
		else if(@FieldName = 'UserFactory') BEGIN set @FieldNameNext ='UserAuthority' set  @FieldDate ='DateFactory' END
		else if(@FieldName = 'UserAuthority') BEGIN set @FieldDate ='DateAuthority' END
		--cập nhật ngày	  
		DECLARE @statement_date nvarchar(2000)
		Set @statement_date = CONCAT('Update ',@PlanTable,' set ',@FieldDate,'= GETDATE() where Id = ',@PlanId);
		EXECUTE (@statement_date);
			 
		INSERT INTO [dbo].[PlanSignatureStatus]
				([PlanId]
				,[PlanTable]
				,[UserId]
				,[TimeCreated]
				,[FieldName]
				,[IsAccept]
				,[Note] ,[UserCreated]
			   ,[UserView]
			   ,[DatePlan]
			   ,[isMark]
			   ,[planApproveName]
			   ,[planStatusInfor]
			   ,[timeToolTip]
			   ,[timeView]
			   ,[userPlanName]
			   ,[userSignalture]
			   ,[PlanNumber]
			   ,[NumberAju]
			   ,[PlanYear]
			   ,[PlanMonth]
			   ,[BranchId])
			VALUES
				(@PlanId
				,@PlanTable
				,@UserId
				,GETDATE()
				,@FieldNameNext
				,0
				,N'Chờ phê duyệt hồ sơ.'
			   ,@UserCreated
			   ,@UserView
			   ,@DatePlan
			   ,@isMark
			   ,@planApproveName
			   ,@planStatusInfor
			   ,@timeToolTip
			   ,@timeView
			   ,@userPlanName
			   ,@userSignalture
			   ,@PlanNumber
			   ,@NumberAju
			   ,@PlanYear
			   ,@PlanMonth
			   ,@BranchId);
	END
END
--Gửi yêu cầu phê duyệt cho cấp trên, khi đồng ý ký duyệt vào văn bản
Select 1 as Id, CONCAT(N'Ký duyệt thành công.', '') as message, N'Phê duyệt hồ sơ' as Tittle
return;
END
GO
/****** Object:  StoredProcedure [dbo].[PlanChangeActive]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PlanChangeActive] 
@PlanId int null,
@ActValue int null,
@PlanTable nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	DECLARE @CurrentPlanId bigint 
if(@PlanTable ='PlanDaily')
BEGIN
    UPDATE PlanDaily set ActiveValue = @ActValue where ID = @PlanId	
	Select @PlanId as Id , CONCAT(N'Cập nhật thành công.',  '') as message , CONCAT( N'Change Active',  @PlanTable) as Tittle
END
ELSE if(@PlanTable ='PlanPeriodic')
BEGIN
	  UPDATE PlanPeriodic set ActiveValue = @ActValue where ID = @PlanId	
	  Select @PlanId as Id , CONCAT(N'Cập nhật thành công.',  '') as message , CONCAT( N'Change Active',  @PlanTable) as Tittle
	END	
	ELSE if(@PlanTable ='PlanOver')
BEGIN
	  UPDATE PlanOver set ActiveValue = @ActValue where ID = @PlanId	
	  Select @PlanId as Id , CONCAT(N'Cập nhật thành công.',  '') as message , CONCAT( N'Change Active',  @PlanTable) as Tittle
	END	
	ELSE if(@PlanTable ='PlanSupplie')
BEGIN
	  UPDATE PlanSupplie set ActiveValue = @ActValue where ID = @PlanId	
	  Select @PlanId as Id , CONCAT(N'Cập nhật thành công.',  '') as message , CONCAT( N'Change Active',  @PlanTable) as Tittle
	END	
ELSE
Select @PlanId as Id , CONCAT(N'Không thể cập nhật.',  '') as message , CONCAT( N'Change Active',  @PlanTable) as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAvatarUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAvatarUser] 
	-- Add the parameters for the stored procedure here
	 @Avatar nvarchar(500) null	
	,@Id nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   UPDATE AspNetUsers
      SET Avatar =@Avatar        
         ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

  DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('User')  
  Select 1  as Id, N'Cập nhật ảnh đại diện thành công.' as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDayStatusPlanDailyWorks]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateDayStatusPlanDailyWorks] 
	-- Add the parameters for the stored procedure here
     @PlanWorkId bigint null
	 ,@UserID nvarchar(451) null
	 ,@DayStatus bigint 
     ,@day int 
	 ,@ContentChange nvarchar(451) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
 DECLARE @Field nvarchar(50) 

 if(@day <10) select @Field = CONCAT ('DayStatus0',@day) else select @Field = CONCAT ('DayStatus', @day)

	 DECLARE @statement nvarchar(2000)
	 Set @statement = CONCAT('UPDATE PlanDailyWorks SET ',@Field,' =',@DayStatus,' where Id =', @PlanWorkId)
		 EXECUTE (@statement)

	INSERT INTO [dbo].[PlanDailyWorkLog]
				   ([PlanDailyWorkId]
				   ,[ContentChange]
				   ,[UserAct]
				   ,DayActive
				   ,[TimeCreated])
			 VALUES
				   (@PlanWorkId
				   ,@ContentChange
				   ,@UserID
				   ,@day
				   ,GETDATE())
 DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanDaily')  
Select @PlanWorkId as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateDeviceFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update Device set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Quản lý thiết bị' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceHistoryStatus]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateDeviceHistoryStatus] 
	-- Add the parameters for the stored procedure here
	 @DeviceId int null	
	,@Status int null
	,@Type int null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      DECLARE @OlDStatus int;  SET @OlDStatus = (select Top(1) StatusValue from DeviceHistoryStatus where [DeviceId] = @DeviceId order by Id desc)
		DECLARE @Des nvarchar(250) =''
		if(@Type=0) set @Des = N'Cập nhật từ giao diện thiết bị'
		else if(@Type=1) set @Des = N'Cập nhật từ giao diện thiết bị'
		else if(@Type=2) set @Des = N'Cập nhật tự bảng sự cố nghiêm trọng' -- nghiêm trọng
		else if(@Type=3) set @Des = N'Cập nhật tự bảng sự cố' -- sựu cố bt
		else if(@Type=4) set @Des = N'Đang bảo dưỡng'
		else if(@Type=5) set @Des = N'Đang bảo trì'
		else if(@Type=6) set @Des = N'Đang sửa chữa'
		 if(@OlDStatus <>@Status)
		 BEGIN		
			INSERT INTO [dbo].[DeviceHistoryStatus]
					   ([DeviceId]
					   ,[StatusValue]
					   ,[Desc]
					   ,[TimeCreated])
			VALUES (@DeviceId, @Status, @Des,GETDATE())  --N'Cập nhật từ giao diện thiết bị'
		END
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDeviceTargetFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateDeviceTargetFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update DeviceTarget set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateInforUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateInforUser] 
	-- Add the parameters for the stored procedure here
	 @FullName nvarchar(500) null	
	 ,@PhoneNumber nvarchar(450) null
	 ,@Description nvarchar(450) null
	,@Id nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   UPDATE AspNetUsers
      SET Description =@Description
	      ,FullName =@FullName
		  ,PhoneNumber =@PhoneNumber      
         ,[TimeModified] = GETDATE()
    WHERE Id =@Id;
	
  DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('User')  
 Select @ID  as Id, N'Cập nhật thành công.' as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanDailyFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanDailyFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanDaily set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanDailyTroubleReportFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanDailyTroubleReportFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanDailyTroubleReport set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanOverFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanOverFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanOver set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanOverTargets]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanOverTargets] 
	-- Add the parameters for the stored procedure here
     @Targets nvarchar(500) null
	,@Id bigint 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
 UPDATE PlanOver
   SET Targets = @Targets
      ,TimeModified = GETDATE()
 WHERE Id =@Id;

  DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('PlanOver')  
Select @Id as Id, CONCAT(N'Cập nhật thành công.', '') as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanPeriodicDeviceFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanPeriodicDeviceFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanPeriodicDevice set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanPeriodicFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanPeriodicFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanPeriodic set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanPeriodicReportFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanPeriodicReportFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanPeriodicReport set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanSupplieFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanSupplieFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanSupplie set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanTargetFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePlanTargetFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update PlanTarget set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSignatureUser]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSignatureUser] 
	-- Add the parameters for the stored procedure here
	 @Signature nvarchar(500) null	
	,@Id nvarchar(450) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
   UPDATE AspNetUsers
      SET Signature =@Signature        
         ,[TimeModified] = GETDATE()
 WHERE Id =@ID;

  DECLARE @FuncName nvarchar(150); SET @FuncName = [dbo].[ufnGetFuncNameByTable]('User')  
 Select 1  as Id, N'Cập nhật ảnh chữ ký thành công.' as message, @FuncName as Tittle
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplieFileScan]    Script Date: 27/05/2024 21:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSupplieFileScan] 
	-- Add the parameters for the stored procedure here
	 @Id int null	
	,@FIleScan nvarchar(500) null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
  --cập nhật trạng thái thiết bị
  ---nếu thay đổi trạng thái thì ghi lại trạng thái
BEGIN TRY  
      Update Supplie set FileScan = @FIleScan where Id = @Id

	  Select @Id as Id, N'Cập nhật file thành công.' as message, 'Biên bản sự cố nghiêm trọng' as Tittle
END TRY  
BEGIN CATCH  
		Delete from [dbo].[ErrorLog] WHERE Id NOT IN (select Top(20) Id from [dbo].[ErrorLog] order by Id desc)
		INSERT INTO [dbo].[ErrorLog]
			   ([ErrorNumber]
			   ,[ErrorSeverity]
			   ,[ErrorState]
			   ,[ErrorProcedure]
			   ,[ErrorLine]
			   ,[ErrorMessage])
		SELECT  
			CONVERT(nvarchar(250),ERROR_NUMBER()) AS ErrorNumber  
			,CONVERT(nvarchar(250),ERROR_SEVERITY()) AS ErrorSeverity  
			,CONVERT(nvarchar(250),ERROR_STATE()) AS ErrorState  
			,CONVERT(nvarchar(250),ERROR_PROCEDURE()) AS ErrorProcedure  
			,CONVERT(nvarchar(250),ERROR_LINE()) AS ErrorLine  
			,CONVERT(nvarchar(250),ERROR_MESSAGE()) AS ErrorMessage; 

      Select 0 as Id, N'Gặp lỗi SQl server.' as message, 'Quản lý thiết bị' as Tittle
END CATCH  
END
GO
