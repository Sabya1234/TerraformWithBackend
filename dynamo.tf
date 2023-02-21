resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = var.dynamo_table_state
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = var.dynamo_db_type
  }
}