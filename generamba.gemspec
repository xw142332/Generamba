lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'generamba/version'

Gem::Specification.new do |spec|
  spec.name          = 'generamba'
  spec.version       = Generamba::VERSION
  spec.authors       = ['Egor Tolstoy', 'Andrey Zarembo', 'Beniamin Sarkisyan', 'Anton Prokhorov']
  spec.email         = 'e.tolstoy@rambler-co.ru'

  spec.summary       = 'Advanced code generator for Xcode projects with a nice and flexible template system.'
  spec.description   = 'Generamba is a powerful and easy-to-use Xcode code generator. It provides a project-based configuration, flexible templates system, the ability to generate code and tests simultaneously.'
  spec.homepage      = 'https://github.com/rambler-digital-solutions/Generamba'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ['generamba']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2'

  spec.add_runtime_dependency 'rake', '~> 10.5'

  spec.add_development_dependency 'bundler',   '~> 1.10'
  spec.add_development_dependency 'rspec',     '~> 3.4'
  spec.add_development_dependency 'rubocop',   '~> 0.42'
  spec.add_development_dependency 'pry-byebug', '~> 3.4'
end
