module ShengXiao
  module SxDate
    def chinese_zodiac_sign
      Finder.sign_for(self)
    end
  end
end

[Date, DateTime].each do |date_class|
  date_class.send(:include, ShengXiao::SxDate)
end
