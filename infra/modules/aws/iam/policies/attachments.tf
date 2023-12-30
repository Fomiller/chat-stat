resource "aws_iam_role_policy_attachment" "lambda_event_sub_basic_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = var.iam_role_name_lambda_event_sub
}

resource "aws_iam_role_policy_attachment" "lambda_event_sub_dynamodb_attachment" {
  policy_arn = aws_iam_policy.lambda_event_sub.arn
  role       = var.iam_role_name_lambda_event_sub
}