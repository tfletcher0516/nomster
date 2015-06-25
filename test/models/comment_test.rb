require 'test_helper'
require 'factory_girl_rails'

class CommentTest < ActiveSupport::TestCase
 test "humanized rating" do
  #user = FactoryGirl.create(:user, :email => "ken@thefirehoseproject.com")
  #place = FactoryGirl.create(:place, :user => user)
	#comment = FactoryGirl.create(:comment, :place => place)
	comment = FactoryGirl.create(:comment)
  	comment.place.user.email
  	expected = "two stars"
  	actual = comment.humanized_rating
  	assert_equal expected,actual
  end
end
