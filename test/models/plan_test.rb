require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  def test_that_a_slug_is_generated_by_underscoring_name
    plan = Plan.new(name: 'My New Plan', price: plans(:one).price)

    assert plan.valid?
    assert plan.save
    assert_equal 'my_new_plan', plan.slug
  end
end
