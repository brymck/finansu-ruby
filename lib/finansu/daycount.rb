module FinAnSu
  module DayCount
    class << self
      attr_reader :days_per_month, :days_per_year

      def initialize(days_per_month, days_per_year)
        @days_per_month, @days_per_year = days_per_month, days_per_year
      end
    end

    class Act360

    end
  end
end
