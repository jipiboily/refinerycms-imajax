# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-imajax'
  s.version           = '2.0.0'
  s.description       = 'Replacing default bulk image uploading with an Ajaxy, one by one, upload method to prevent timeouts'
  s.authors           = ["Jean-Philippe Boily | @jipiboily"]
  s.email             = ["j@jipi.ca"]
  s.homepage          = 'http://github.com/jipiboily/refinerycms-imajax'
  s.date              = '2012-03-18'
  s.summary           = 'Ajax image uploading for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,lib}/**/*"] + ["README.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.0'

  # s.add_development_dependency 'fog'
end
