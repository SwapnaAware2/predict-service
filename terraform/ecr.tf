resource "aws_ecr_repository" "predict" {
  name = "predict"
  image_scanning_configuration {
    scan_on_push = true
  }
}

