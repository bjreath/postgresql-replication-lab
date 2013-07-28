name             'postgresql-lab'
maintainer       'Brian Reath'
maintainer_email 'bjreath@gmail.com'
license          'All rights reserved.'
description      'Installs & configures PostgreSQL lab'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends "postgresql", "3.0.0"
depends "database", "1.4.0"
