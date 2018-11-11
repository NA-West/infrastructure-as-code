// define provider configuration variables
project_id = "reflecting-surf-221919"         # project in which to create the instance
region = "us-central1"                       # region in which to create the instance

// define instance variables
instance_name = "zabbix-gcp-central-${random_id.server.hex}"        # instance name
zone = "us-central1-b"                      # zone in which to create the instance
