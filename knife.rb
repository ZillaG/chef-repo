# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT

# Organization keys
validator_client_name    "cfchefclass-validator"
validator_key            "#{ENV['HOME']}/.chef/cfchefclass-validator.pem"

# User keys
node_name                "cfoutsclass"
client_key               "#{ENV['HOME']}/.chef/cfoutsclass.pem"

chef_server_url          "https://api.chef.io/organizations/cfchefclass"
cookbook_path            "#{ENV['HOME']}/chef-repo/cookbooks"
