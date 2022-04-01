# Retrieve output of load balancer dns name
output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = "aws_lb.demo-alb.dns_name"
}