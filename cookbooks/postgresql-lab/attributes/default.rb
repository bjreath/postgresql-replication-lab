node.set['postgresql']['version']                    = "9.2"
node.set['postgresql']['enable_pgdg_yum']            = true
node.set['postgresql']['password']['postgres']       = "postgres"
node.set['postgresql']['dir']                        = "/var/lib/pgsql/9.2/data"
node.set['postgresql']['client']['packages']         = [ "postgresql92", "postgresql92-devel" ]
node.set['postgresql']['server']['packages']         = [ "postgresql92-server" ]
node.set['postgresql']['server']['service_name']     = "postgresql-9.2"
node.set['postgresql']['contrib']['packages']        = [ "postgresql92-contrib" ]
