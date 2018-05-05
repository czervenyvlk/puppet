node pe-mike {
  class { 'r10k':
    sources => {
      'puppet' => {
        'remote'  => 'git@github.com:czervenyvlk/puppet.git',
        'basedir' => '/etc/puppetlabs/code/environments',
        'prefix'  => false,
      },
    },
  }
  class { 'hiera':
    hierarchy      => [
      'nodes/%{::hostname}',
      'common',
    ],
    logger         => 'console',
    merge_behavior => 'deeper',
    datadir        => "/etc/puppetlabs/code/hieradata/%{::environment}",
  }
}

