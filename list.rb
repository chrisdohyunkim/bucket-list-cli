require_relative "event"

class List
  def initialize
    @event = []
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

  def add_event
    print "Enter which bucket list event you completed: "
    item = gets.chomp

    completed_date = nil
    loop do
      print "Enter which date you completed the event (i.e. YYYY-MM-DD): "
      input_date = gets.chomp

      begin
        completed_date = Date.parse(input_date)
        break
      rescue
        puts "Please write the date in the correct format (YYYY-MM-DD)."
      end
    end

    @event << Event.new(item, completed_date)
    puts "Good job on another bucket list item completed!"
  end

  def list_events
    puts "These are the bucket list items you completed this year: "
    @event.each do |event|
      puts event
    end
  end
end
