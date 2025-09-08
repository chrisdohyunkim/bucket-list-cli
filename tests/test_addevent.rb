require "minitest/autorun"
require "./list"
require "./event"
require "date"

class TestBucketList < Minitest::Test
  def setup
    @bucket_list = List.new
  end

  def test_adding_event
    item = "Skydiving"
    date = Date.new(2025, 9, 8)

    @bucket_list.test_adding_event(item, date)

    assert_equal 1, @bucket_list.event.size, "Event should be added to the list"
    assert_equal item, @bucket_list.event.first.item, "Event item should match"
    assert_equal date, @bucket_list.event.first.completed_date, "Event date should match"
  end
end