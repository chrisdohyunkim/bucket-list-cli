require "minitest/autorun"
require_relative "../list"
require_relative "../event"
require "date"

class TestList < Minitest::Test
  def test_addevent
    bucket_list = List.new
    item = "Skydiving"
    completed_date = Date.new(2025, 9, 8)

    bucket_list.add_event(item, completed_date)

    assert_equal 1, bucket_list.events.size #Event should be added to the list
    assert_equal item, bucket_list.events.first.item #Event item should match
    assert_equal completed_date, bucket_list.events.first.completed_date #Event date should match
  end
end
