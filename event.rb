require "date"
class Event
    attr_accessor :item, :completed_date

    def initialize(item, completed_date)
        @item = item
        @completed_date = completed_date
    end

    def to_s
      "\"#{item}\" completed on #{completed_date}"
    end
end