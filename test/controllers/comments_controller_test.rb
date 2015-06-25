require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
 test "Create Comment" do
  user = FactoryGirl.create(:user)
  sign_in user

  place = FactoryGirl.create(:place, :user => user)
  assert_difference 'place.comments.count' do
  	post :create, :place_id => place.id, :comment => {

  		:rating => "2_stars",
  		:message => "Meh whatever"
  	}
  	end

  	assert_redirected_to place_path(place)
  	comment = Comment.last
  	puts comment.message
  end
end
