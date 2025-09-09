require_relative "event"

class List
  attr_reader :events

  def initialize
    @events = []
  end

  def run
    loop do
      puts "\n"
      puts "Life is short! Start tracking your bucket list items!"
      puts "1: Add a bucket list event you completed this year"
      puts "2: List all your bucket list events completed during this year"
      puts "3: Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_event
      when 2
        list_events
      when 3
        puts "Keep adding to your bucket list! See you soon!"
        break
      else
        puts "That's not an option. Please try again."
      end
    end
  end

  require "date"

def add_event(item = nil, completed_date = nil)
  
  if item.nil?
    print "Enter the completed bucket list activity: "
    item = gets.chomp
  end

  if completed_date.nil?
    loop do
      print "Enter completed date (YYYY-MM-DD): "
      input = gets.chomp
      begin
        completed_date = Date.strptime(input, "%Y-%m-%d")
        break
      rescue ArgumentError
        puts "Please write the date in the correct format (YYYY-MM-DD)."
      end
    end
  end

  @events << Event.new(item, completed_date)
end

  def list_events
    puts "These are the bucket list items you completed this year: "
    @events.each do |events|
      puts events
    end
  end
end
