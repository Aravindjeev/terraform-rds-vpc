locals {
  resource_name_prefix = "rds"
}

resource "aws_db_subnet_group" "_" {
  name       = "${local.resource_name_prefix}-${var.identifier}-subnet-group"
  subnet_ids = [aws_subnet.prod-subnet-private-1.id, aws_subnet.prod-subnet-private-2.id]
}

resource "aws_db_instance" "_" {
  identifier = "${local.resource_name_prefix}-${var.identifier}"

  allocated_storage       = var.allocated_storage
  backup_retention_period = var.backup_retention_period
  backup_window           = var.backup_window
  maintenance_window      = var.maintenance_window
  db_subnet_group_name    = aws_db_subnet_group._.id
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  # multi_az                = var.multi_az
  name                    = var.name
  username                = var.username
  password                = var.password
  port                    = var.port
  publicly_accessible     = var.publicly_accessible
  storage_encrypted       = var.storage_encrypted
  # storage_type            = var.storage_type

  vpc_security_group_ids = ["${aws_security_group._.id}"]

  # allow_major_version_upgrade = var.allow_major_version_upgrade
  # auto_minor_version_upgrade  = var.auto_minor_version_upgrade

  final_snapshot_identifier = var.final_snapshot_identifier
  snapshot_identifier       = var.snapshot_identifier
  # skip_final_snapshot       = var.skip_final_snapshot

  # performance_insights_enabled = var.performance_insights_enabled 
}
resource "random_string" "password" {
  length  = 16
  special = false
}