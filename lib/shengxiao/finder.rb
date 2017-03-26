module ShengXiao
  module Finder
    @data = []

    class << self
      def sign_for(date)
        date = Date.parse(date) unless date.is_a?(Date)
        year = date.year

        parse_data_from_file if @data.empty?
        year_data = get_year_data(year)

        raise "Date should be specified in the given range: "\
              "#{@data_start} - #{@data_end}. "\
              "You specified: #{date}." unless year_data

        year_start_date = Date.parse("#{year_data['start_date']} #{year}")
        if date < year_start_date
          year_data = get_year_data(year-1)
          raise "Given date should be no earlier than #{@data_start}. "\
                "You specified: #{date}." unless year_data
        end

        sign = year_data["sign"]
        I18n.t("shengxiao.signs.#{sign}")
      end

      private

      def parse_data_from_file
        data_file   = File.read(File.join(File.dirname(__FILE__), '..', 'data', 'data.json'))
        @data       = JSON.parse(data_file)
        @data_start = Date.parse("#{@data.first['start_date']} #{@data.first['year']}")
        @data_end   = Date.parse("31 Jan #{@data.last['year']}")
      end

      def get_year_data(year)
        @data.detect { |d| d['year'] == year.to_s }
      end
    end
  end
end
