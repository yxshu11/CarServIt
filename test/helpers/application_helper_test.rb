require 'test_helper'

class ApplicationHelperTest < ActiveView::TestCase
	
	test "full title helper" do
		assert_equal full_title,					"CarServIt"
		assert_equal full_title("Help"), 	"Help | CarServIt"
	end
end