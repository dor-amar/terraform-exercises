output "lb_dns" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.web_lb.dns_name
}
