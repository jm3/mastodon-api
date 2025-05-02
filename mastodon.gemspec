lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mastodon/version'

Gem::Specification.new do |spec|
  spec.name          = 'mastodon-api'
  spec.description   = 'fork with patched http dependency'
  spec.homepage      = 'https://github.com/tootsuite/mastodon-api'
  spec.email         = 'eugen@zeonfederated.com'
  spec.authors       = ['Eugen Rochko']
  spec.summary       = 'ruby wrapper for the Mastodon API'
  spec.required_ruby_version = '>= 3.0.0'
  spec.licenses      = %w[MIT]
  spec.files         = %w[mastodon.gemspec] + Dir['lib/**/*.rb']
  spec.require_paths = %w[lib]
  spec.version       = Mastodon::Version

  spec.add_dependency 'addressable', '~> 2.6'
  spec.add_dependency 'buftok', '~> 0'
  spec.add_dependency 'http', '~> 5.0'
  spec.add_dependency 'oj', '~> 3.7'

  spec.add_development_dependency 'bundler', '> 1', '< 3'
end
