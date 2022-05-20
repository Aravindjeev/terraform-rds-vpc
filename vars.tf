variable "AWS_REGION" {    
    default = "us-east-2"
}
# variable "subnet_ids" {
#     default = ["subnet-0a0dabc3e2a4030c6"]
  
# }
  
variable "sg_ingress_cidr_block" {
    default = ["0.0.0.0/0"] 
}
variable "sg_egress_cidr_block" {
    default = ["0.0.0.0/0"] 
  
}
variable "identifier" {
    default = "rds"
  
}
variable "allocated_storage" {
    default = 10
  
}
variable "backup_retention_period" {
    default = 1
  
}
variable "backup_window" {
    default = "10:46-11:16"
  
}
variable "maintenance_window" {
    default = "Mon:00:00-Mon:03:00"
}
variable "engine" {
    default = "mysql"
}
variable "engine_version" {
    default = "8.0.15"
  
}
variable "instance_class" {
    default = "db.t2.micro"
}

# variable "multi_az" {
#     default = ""
# }
variable "name" {
    default ="rdstest"    
  
}
variable "username" {
    default = "Postgress"
}
variable "password" {
    default = "test*1234"
}
variable "port" {
    default = 3306
  
}
variable "publicly_accessible" {
    default = false
  
}
variable "storage_encrypted" {
    default = false
}
# variable "storage_type" {
#     default = ""
  
# }
# variable "allow_major_version_upgrade" {
#     default = ""
  
# }
# variable "auto_minor_version_upgrade" {
#     default = ""
  
# 
variable "final_snapshot_identifier" {
    default = "prod-trademerch-website-db-snapshot"
}
variable "snapshot_identifier" {
    default = null
  
}
# variable "skip_final_snapshot" {
#     default = ""
  
# }
# variable "performance_insights_enabled" {
#     default = true
  
# }