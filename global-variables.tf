variable "aws_region" {
  description = "AWS EC2 Region for the Wordpress VPC."
  default     = "ap-southeast-1"
}

//VPC//

variable "vpc_cidr" {
  description = "CIDR block for VPC."
  default     = ""
}

variable "pub_sbn_1a_cidr" {
  description = "CIDR block for public subnet A."
  default     = ""
}

variable "pub_sbn_1b_cidr" {
  description = "CIDR block for public subnet B."
  default     = ""
}

variable "pub_sbn_1c_cidr" {
  description = "CIDR block for public subnet C."
  default     = ""
}

variable "pvt_sbn_1a_cidr" {
  description = "CIDR block for private subnet A."
  default     = ""
}

variable "pvt_sbn_1b_cidr" {
  description = "CIDR block for private subnet B."
  default     = ""
}

variable "pvt_sbn_1c_cidr" {
  description = "CIDR block for private subnet C."
  default     = ""
}

variable "vpc_tag_name" {
  description = "Wordpress VPC tag Name."
  default     = "WP"
}

variable "vpc_tag_vpc" {
  description = "Wordpress VPC tag VPC."
  default     = "WP"
}

variable "vpc_tag_purpose" {
  description = "Wordpress VPC tag Purpose."
  default     = "VPC"
}

variable "nat_tag_name" {
  description = "Wordpress NAT tag Name."
  default     = "NAT"
}

variable "nat_tag_vpc" {
  description = "Wordpress NAT tag VPC."
  default     = "WP"
}

variable "nat_tag_purpose" {
  description = "Wordpress NAT tag Purpose."
  default     = "NAT"
}

variable "pub_tbl_tag_name" {
  description = "Wordpress public table tag Name."
  default     = "PUB-TBL"
}

variable "pub_tbl_tag_vpc" {
  description = "Wordpress public table tag VPC."
  default     = "WP"
}

variable "pub_tbl_tag_purpose" {
  description = "Wordpress public table tag Purpose."
  default     = "Public Table"
}

variable "pvt_tbl_tag_name" {
  description = "Wordpress private table tag Name."
  default     = "PVT-TBL"
}

variable "pvt_tbl_tag_vpc" {
  description = "Wordpress private table tag VPC."
  default     = "WP"
}

variable "pvt_tbl_tag_purpose" {
  description = "Wordpress private table tag Purpose."
  default     = "Private Table"
}

variable "igw_tag_name" {
  description = "Wordpress IGW tag Name."
  default     = "IGW"
}

variable "igw_tag_vpc" {
  description = "Wordpress IGW tag VPC."
  default     = "WP"
}

variable "igw_tag_purpose" {
  description = "Wordpress IGW tag Purpose."
  default     = "Internet gateway"
}

variable "vpc_to_peer" {
  description = "Other account VPC for peering."
  default     = ""
}

variable "peer_route_table" {
  description = "Other VPC route table."
  default     = ""
}

variable "vpc_to_route_cidr" {
  description = "Other VPC CIDR block."
  default     = ""
}

//EC2//

variable "ec2_ami" {
  description = "Wordpress server AMI."
  default     = ""
}

variable "ec2_ins_type" {
  description = "Wordpress instance type."
  default     = ""
}

variable "ec2_count" {
  description = "Wordpress instance count."
  default     = ""
}

variable "ec2_key_name" {
  description = "Wordpress key name."
  default     = ""
}

variable "ec2_ami_profile" {
  description = "Wordpress instance IAM profile."
  default     = ""
}

variable "ec2_associate_public_ip_address" {
  description = "Wordpress EC2 associate public IP address."
  default     = "true"
}

variable "ec2_tag_name" {
  description = "Wordpress EC2 tag Name."
  default     = "EC2"
}

variable "ec2_tag_vpc" {
  description = "Wordpress EC2 tag VPC."
  default     = "WP"
}

variable "ec2_tag_purpose" {
  description = "Wordpress EC2 tag Purpose."
  default     = "WP"
}

variable "elb_name" {
  description = "Wordpress ELB name."
  default     = "ELB"
}

variable "elb_tag_name" {
  description = "Wordpress ELB tag Name."
  default     = "ELB"
}

variable "elb_tag_vpc" {
  description = "Wordpress ELB tag VPC."
  default     = "WP"
}

variable "elb_tag_purpose" {
  description = "Wordpress ELB tag Purpose."
  default     = "ELB"
}

//SG//

variable "ec2_sg_name" {
  description = "Wordpress EC2 Security group name."
  default     = "SG"
}

variable "ec2_sg_ing_cidr" {
  description = "Inbound CIDR access for Wordpress EC2 (SSH)."
  default     = "0.0.0.0/0"
}

variable "ec2_sg_tag_name" {
  description = "Wordpress EC2 SG tag Name."
  default     = "EC2-SG"
}

variable "ec2_sg_tag_vpc" {
  description = "Wordpress EC2 SG tag VPC."
  default     = "WP"
}

variable "ec2_sg_tag_purpose" {
  description = "Wordpress EC2 SG tag Purpose."
  default     = "EC2 SG"
}

variable "elb_sg_name" {
  description = "ELB security group name."
  default     = "ELB-SG"
}

variable "elb_sg_http_ing_cidr" {
  description = "Inbound CIDR acces for Wordpress EC2 (HTTP)."
  default     = "0.0.0.0/0"
}

variable "elb_sg_tag_name" {
  description = "Wordpress ELB SG tag Name."
  default     = "ELB-SG"
}

variable "elb_sg_tag_vpc" {
  description = "Wordpress ELB SG tag VPC."
  default     = "WP"
}

variable "elb_sg_tag_purpose" {
  description = "Wordpress ELB SG tag Purpose."
  default     = "ELB SG"
}

variable "rds_sg_name" {
  description = "RDS security group name."
  default     = "RDS-SG"
}

variable "rds_sg_cnc_ing_cidr" {
  description = "Inbound CIDR access for Wordpress RDS."
  default     = "0.0.0.0/0"
}

variable "rds_sbn_grp_name" {
  description = "RDS subnet group name."
  default     = "rds_sbn_grp_name"
}

//RDS//


variable "rds_instance_class" {
  description = "RDS instance size."
  default     = ""
}

variable "rds_allocated_storage" {
  description = "RDS storage size."
  default     = "10"
}

variable "rds_storage_type" {
  description = "RDS storage type."
  default     = "gp2"
}

variable "rds_multi_az" {
  description = "RDS multi-az option."
  default     = "false"
}

variable "rds_publicly_accessible" {
  description = "RDS publicly accessible option."
  default     = "true"
}


variable "rds_name" {
  description = "RDS name."
  default     = ""
}

variable "rds_username" {
  description = "RDS user name."
  default     = ""
}

variable "rds_password" {
  description = "RDS password."
  default     = ""
}


variable "rds_engine_version" {
  description = "RDS engine version."
  default     = "5.7.21"
}


variable "rds_engine" {
  description = "RDS engine."
  default     = "mysql"
}


variable "rds_apply_immediately" {
  description = "RDS apply immediately option."
  default     = "true"
}


variable "rds_skip_final_snapshot" {
  description = "RDS skip final snapshot option."
  default     = "true"
}


variable "rds_allow_major_version_upgrade" {
  description = "RDS allow major version upgrade option."
  default     = "false"
}


variable "rds_auto_minor_version_upgrade" {
  description = "RDS auto minor version upgrade option."
  default     = "true"
}

variable "rds_copy_tags_to_snapshot" {
  description = "RDS copy tags from DB to a snapshot option."
  default     = "true"
}

variable "rds_maintenance_window" {
  description = "RDS maintenance window."
  default     = "Mon:03:00-Mon:04:00"
}


variable "rds_backup_retention_period" {
  description = "RDS backup retention period."
  default     = "7"
}


variable "rds_backup_window" {
  description = "RDS backup window."
  default     = "22:00-03:00"
}


//variable "rds_snapshot_identifier" {
//  description = "RDS final snapshot identifier."
//  default     = "scb-dev"
//}



//RDS parameter group definition//


variable "rds_param_grp_name" {
  description = "RDS parameter group name. [Only lowercase alphanumeric characters and hyphens allowed in parameter group]"
  default     = "scb-dev-57"
}


variable "rds_join_buffer_size" {
  description = "RDS join buffer size option."
  default     = "1000"
}

variable "rds_log_bin_trust_function_creators" {
  description = "RDS log bin trust function creators option."
  default     = "1"
}

variable "rds_log_output" {
  description = "RDS log output option."
  default     = "FILE"
}

variable "rds_log_queries_not_using_indexes" {
  description = "RDS log queries not using indexes option."
  default     = "0"
}

variable "rds_long_query_time" {
  description = "RDS long query time option."
  default     = "2"
}

variable "rds_max_allowed_packet" {
  description = "RDS max allowed packet option."
  default     = "1024194304"
}


variable "rds_max_connections" {
  description = "RDS max connections option."
  default     = "50"
}


variable "rds_slow_query_log" {
  description = "RDS slow query log option."
  default     = "1"
}

variable "rds_sql_mode" {
  description = "RDS sql mode option."
  default     = "NO_AUTO_CREATE_USER,STRICT_ALL_TABLES"
}

variable "rds_time_zone" {
  description = "RDS time zone option."
  default     = "Asia/Bangkok"
}

//RDS tags definition//

variable "rds_tag_name" {
  description = "RDS Name tag."
  default     = "rds_tag_name"
}

variable "rds_tag_vpc" {
  description = "RDS VPC tag."
  default     = "rds_tag_vpc"
}

variable "rds_tag_purpose" {
  description = "RDS Purpose tag."
  default     = "rds_tag_purpose"
}

variable "rds_sg_tag_name" {
  description = "Wordpress RDS SG tag Name."
  default     = "RDS-SG"
}

variable "rds_sg_tag_vpc" {
  description = "Wordpress RDS SG tag VPC."
  default     = "WP"
}

variable "rds_sg_tag_purpose" {
  description = "Wordpress RDS SG tag Purpose."
  default     = "RDS SG"
}