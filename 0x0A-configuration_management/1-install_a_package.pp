#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
package {'Flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
package {'python3.8':
  ensure   => '2.1.0',
  provider => 'pip3'
}
package {'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
  require  => Package['Flask']
}
