Gem::Specification.new do |s|
  s.name        = 'hutch-acknowledgements-retry_once'
  s.version     = '0.0.0'
  s.summary     = 'Add this to your hutch config to have a retry on the messages processing'
  s.description = 'Retries failed messages on a hutch consumer, once.'
  s.authors     = ['Hélio Nagamachi']
  s.email       = '69481759+helionagamachi-basement@users.noreply.github.com'
  s.files       = ['lib/hutch/acknowledgements/retry_once.rb']
  s.homepage    = 'https://github.com/basement-io/hutch-acknowledgements-retry-once'
  s.license       = 'MIT'

  s.add_runtime_dependency 'hutch', '~> 1.1'
end
