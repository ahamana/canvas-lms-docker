# While canvas defaults to ssl-forcing in prod envs,
# that doesn't work right when indirecting through docker
config.force_ssl = false
config.public_file_server.enabled = true
