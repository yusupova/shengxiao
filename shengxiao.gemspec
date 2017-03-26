$:.push File.expand_path("../lib", __FILE__)
require 'shengxiao/version'

Gem::Specification.new do |s|
  s.name        = 'shengxiao'
  s.version     = ShengXiao::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'Chinese calendar (Shengxiao) sign calculator'
  s.description = 'Chinese calendar sign calculator gem'
  s.authors     = ['Albina Yusupova']
  s.email       = 'yusupova.albina@gmail.com'
  s.homepage    = 'https://github.com/yusupova/shengxiao'

  s.add_dependency 'i18n', '~> 0.8.0'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'activerecord', '~> 3'

  s.files = Dir['lib/**/*']
end