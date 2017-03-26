require 'i18n'
glob = Dir.glob(File.dirname(File.expand_path(__FILE__)))
I18n.config.load_path += Dir[File.join(glob, 'locales', '*.yml')]

require 'date'
require 'json'
require 'shengxiao/finder'

module ShengXiao
  def self.sign(date)
    ShengXiao::Finder.sign_for(date)
  end
end
