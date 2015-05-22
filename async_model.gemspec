# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'async_model/version'

Gem::Specification.new do |s|
  s.name        = 'async_model'
  s.version     = AsyncModel::VERSION::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Nicolas Rodriguez']
  s.email       = ['nrodriguez@jbox-web.com']
  s.homepage    = 'https://github.com/jbox-web/async_model'
  s.summary     = %q{A Ruby gem to ease creation of AsyncModel objects}
  s.description = %q{This gem is designed to provide helpers for AsyncModel objects}
  s.license     = 'MIT'

  s.add_dependency 'rails',  '~> 4.0', '>= 4.0.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
