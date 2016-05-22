require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  
	def setup
		@user = users(:michael)
	end
	
	test "unsuccessful edit" do
		get edit_user_path(@user)
		assert_template 'users/edit'
		patch user_path(@user), user: {name: "", email: "foo@invalid", password: "foo", password_confirmation: "bar"}
		assert_template 'users/edit'
		assert_select 'div#error_explanation'
		assert_select 'div.alert-danger', "The form contains 4 errors."
		assert_select 'div.alert'	
		assert_select 'div#error_explanation ul li', "Name can't be blank"
		assert_select 'div#error_explanation ul li', "Email is invalid"
		assert_select 'div#error_explanation ul li', "Password is too short (minimum is 6 characters)"			
		assert_select 'div#error_explanation ul li', "Password confirmation doesn't match Password"
	end
end