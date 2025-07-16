using System;

namespace MledNew2023.MVC.Models
{
    public class Motor
    {
        public Int64 Id { get; set; }
        public string? MotorCode { get; set; }
        public Int64 MotorAI { get; set; }
        public decimal MotorTemp { get; set; }
        public decimal MotorI { get; set; }
        public decimal MotorSpeed { get; set; }
        public decimal MotorSpeed2 { get; set; }
        public Int64 MotorRunningTime { get; set; }
        public Int64 MotorStopTime { get; set; }
        public decimal ConveyorSpeed { get; set; }
        public decimal MotorFrequency { get; set; }
        public decimal MotorVibrate { get; set; }
        public string? MotorVibrateArray { get; set; }
        public int Signal { get; set; }
        public string? TimeReceived { get; set; }
        public decimal MotorRunningHour { get; set; }
        public decimal MotorStopHour { get; set; }
        public decimal ConveyorMoveStep { get; set; }
        public int Wr_MotorTemp { get; set; }
        public int Wr_MotorI { get; set; }
        public int Wr_MotorSpeed { get; set; }
        public int Wr_MotorSpeed2 { get; set; }
        public int Wr_MotorRunningTime { get; set; }
        public int Wr_MotorStopTime { get; set; }
        public int Wr_MotorRunningHour { get; set; }
        public int Wr_MotorStopHour { get; set; }
        public int Wr_ConveyorSpeed { get; set; }
        public int Wr_ConveyorMoveStep { get; set; }
        public int Wr_MotorFrequency { get; set; }
        public int Wr_MotorVibrate { get; set; }
    }
    public class MotorSend
    {
        public Int64 Id { get; set; }
        public string? MotorCode { get; set; }
        public Int64 MotorAI { get; set; }
        public decimal MotorTemp { get; set; }
        public decimal MotorI { get; set; }
        public decimal MotorSpeed { get; set; }
        public decimal MotorSpeed2 { get; set; }
        public Int64 MotorRunningTime { get; set; }
        public Int64 MotorStopTime { get; set; }
        public decimal ConveyorSpeed { get; set; }
        public decimal MotorFrequency { get; set; }
        public decimal MotorVibrate { get; set; }
        public string? MotorVibrateArray { get; set; }
        public int Signal { get; set; }
        public string? TimeReceived { get; set; }
    }
}
