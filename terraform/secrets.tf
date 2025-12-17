resource "aws_secretsmanager_secret" "predict_secret" {
  name = "predict-api-secret"
}

