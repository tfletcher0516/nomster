require 'test_helper'
require 'factory_girl_rails'

class CommentTest < ActiveSupport::TestCase
 test "humanized rating" do
  user = FactoryGirl.create(:user)
  place = FactoryGirl.create(:place)
	comment = FactoryGirl.create(:comment)
  	
  	expected = "two stars"
  	actual = comment.humanized_rating
  	assert_equal expected,actual
  end
end
