# ALB
resource "aws_alb" "test-alb" {
  name            = "test-alb"
  subnets         = ["${var.subnets}"]
  security_groups = ["${var.security_groups}"]
  enable_http2    = "true"
  idle_timeout    = 600
}
