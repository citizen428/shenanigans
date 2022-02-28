Gem::Specification.new do |gem|
  gem.name = "shenanigans"
  gem.version = "1.0.17"
  gem.author = "Michael Kohl"
  gem.email = "me@citizen428.net"

  gem.summary = "Think Facets, just less useful"
  gem.description = "A collection of extensions for various Ruby core classes."
  gem.homepage = "http://rubydoc.info/gems/shenanigans/frames"
  gem.license = "MIT"

  gem.require_paths = %w[lib]
  gem.files = `git ls-files -z LICENSE README.rdoc lib/`.split("\0")

  gem.add_development_dependency "bundler", "~> 2.3"
  gem.add_development_dependency "minitest", "~> 5.0"
  gem.add_development_dependency "rake", "~> 13.0"
  gem.add_development_dependency "standard", "~> 1.7"
  gem.add_development_dependency "yard", ">= 0.9.20"
end
