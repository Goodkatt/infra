resource "aws_lambda_function" "test_lambda" {
  filename      = "lambda-function.zip"
  function_name = "upload-function"
  role          = "arn:aws:iam::729903438313:role/service-role/upload-role-1np1xio6"
  handler       = "index.test"


  source_code_hash = filebase64sha256("lambda-function.zip")

  runtime = "python3.7"

}