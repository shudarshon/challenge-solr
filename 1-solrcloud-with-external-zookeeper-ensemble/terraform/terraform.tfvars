aws_profile		        = "myprofile"                  #aws profiling can make it easy to use terraform on specific aws account from aws profile environment variable
aws_region 		        = "us-east-2"
instance_type         = "t2.small"
instance_name         = "dev-solr-instance"
ami_id   		          = "ami-xxx"
subnet_id             = "subnet-xxx"
security_group        = "sg-xxx"
ssh_user_name         = "ubuntu"
ssh_key_name          = "upskillable"
ssh_key_path          = "/home/user/.key/secret.pem"  #use this variable only when you want to use existing keys in aws
instance_count        = 3
dev_host_label        = "dev"
