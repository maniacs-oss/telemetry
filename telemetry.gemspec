# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'evt-telemetry'
  s.version = '2.4.0.2'
  s.summary = 'In-process telemetry based on observers'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/telemetry'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_runtime_dependency 'evt-dependency'
  s.add_runtime_dependency 'evt-clock'

  s.add_development_dependency 'test_bench'
end
