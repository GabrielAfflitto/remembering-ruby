require './lib/violations'
require 'minitest/autorun'
require 'minitest/pride'
require 'csv'


class ViolationsTest < Minitest::Test

  def setup
    @vio = Violations.from_csv({violations:"./test/Violations-2012(1).csv"})
    @violations = Violations.new(@vio)
  end

  def test_it_exists
    assert_instance_of @violations
  end

end
