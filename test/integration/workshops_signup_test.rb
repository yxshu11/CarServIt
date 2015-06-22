require 'test_helper'

class WorkshopsSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'Workshop.count' do
      post workshops_path, workshop: { 	name: 	 								"",
                               			email: 									"user@invalid",
                               			com_reg_num: 						"R123",
                               			address: 								"Kuala Lumpur",
                               			contact: 								"038888",
                               			password:              	"foo",
                               			password_confirmation: 	"bar" }
    end
    assert_template 'workshops/new'
  end

end
