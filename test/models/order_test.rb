require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save article without title" do
    article = Order.new
    assert_not article.save, "Saved the article without a title"
  end

test "should report error" do
  # some_undefined_variable is not defined elsewhere in the test case
  some_undefined_variable
  assert true
end

end
