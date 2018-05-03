pe-mike {
  class { 'r10k':
    sources => {
      'puppet' => {
        'remote'  => 'git@github.com:czervenyvlk/puppet.git',
        'basedir' => /etc/puppetlabs/code/environments,
        'prefix'  => false,
      },
    },
  }
}
