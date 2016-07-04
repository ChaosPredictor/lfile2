require 'test_helper'

class StepTest < ActiveSupport::TestCase
  
	def setup
		@step = Step.new(instalation_id: 1, line_id: 1, order: 1)
		@instalation = instalations(:gimp)
		@line = lines(:first)
		@line2 = lines(:second)
	end
	
	test "should be valid" do
		assert @step.valid?
	end
	
	test "should require a instalation_id" do
		@step.instalation_id = nil
		assert_not @step.valid?
	end
	
	test "should require a line_id" do
		@step.line_id = nil
		assert_not @step.valid?
	end
	
	test "should require a order" do
		@step.order = nil
		assert_not @step.valid?
	end
	
	test "order should be integer between 0 to 100" do
		@step.order = -1
		assert_not @step.valid?
		@step.order = 101
		assert_not @step.valid?
		@step.order = 0
		assert @step.valid?
		@step.order = 100
		assert @step.valid?		
	end
	
	test "should add and remove line from instalation" do
		assert_not @instalation.hasline?(@line)
		@instalation.addline(@line, 1)
		assert @instalation.hasline?(@line)
		@instalation.removeline(@line)
		assert_not @instalation.hasline?(@line)
	end
	
	test "get all lines of instalation" do
		
	end
end
