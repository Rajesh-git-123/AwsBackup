variable "tables" {
  description = "List of DynamoDB table names to enable PITR on"
  type = list(object({
    table_name = string
  }))
}
