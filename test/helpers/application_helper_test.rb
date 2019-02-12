require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,          "Twictor"
    assert_equal full_title("Help"),  "Help | Twictor"
  end
end