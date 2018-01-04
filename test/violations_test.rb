require './lib/violations'
require 'minitest/autorun'
require 'minitest/pride'
require 'csv'


class ViolationsTest < Minitest::Test

  def setup
    @csv = Violations.from_csv({violations:"./test/Violations-2012(1).csv"})
    @violations = Violations.new(@csv)
  end

  def test_it_exists
    assert_instance_of Violations, @violations
  end

  def test_it_can_sort_violations_by_category
    assert_equal 5, @violations.category_sort
  end

end
