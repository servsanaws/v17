#  create an alarm for ec2. This alarm will trigger when the average CPU utilization of the EC2 instance exceeds 80% for a period of 5 minutes (300 seconds).

resource "aws_cloudwatch_metric_alarm" "nautilus-alarm"   {

    alarm_name          = "nautilus-alarm"
    comparison_operator = "GreaterThanThreshold"
    evaluation_periods  = "1"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "300"
    statistic           = "Average"
    threshold           = "80"
}
