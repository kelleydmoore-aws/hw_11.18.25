resource "aws_lb_target_group" "web_tier" {
  name        = "web-app-lb-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = aws_vpc.main.id

  health_check {
    enabled = true
  }

}
