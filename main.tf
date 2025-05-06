resource "null_resource" "enable_pitr" {
  for_each = { for table in var.tables : table.table_name => table }

  provisioner "local-exec" {
    command = "aws dynamodb update-continuous-backups --table-name ${each.key} --point-in-time-recovery-specification PointInTimeRecoveryEnabled=True"
  }
}
