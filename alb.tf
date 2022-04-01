resource "aws_lb" "demo-alb" {
  name               = "Demo-ALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web-sg.id]
  subnets            = [aws_subnet.web-subnet-1.id, aws_subnet.web-subnet-2.id]
}

resource "aws_lb_target_group" "demo-alb" {
  name     = "ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc-test.id
}

resource "aws_lb_target_group_attachment" "demo-alb1" {
  target_group_arn = aws_lb_target_group.demo-alb.arn
  target_id        = aws_instance.ws1.id
  port             = 80

  depends_on = [
    aws_instance.ws1,
  ]
}

resource "aws_lb_target_group_attachment" "demo-alb2" {
  target_group_arn = aws_lb_target_group.demo-alb.arn
  target_id        = aws_instance.ws2.id
  port             = 80

  depends_on = [
    aws_instance.ws2,
  ]
}

resource "aws_lb_listener" "demo-alb" {
  load_balancer_arn = aws_lb.demo-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.demo-alb.arn
  }
}