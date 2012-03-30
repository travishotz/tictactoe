require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  context "associations"  do
    should "find all games that user has played in" do
      user = FactoryGirl.create(:user)
      game = FactoryGirl.create(:game, :player_x => user)
      assert_equal 1, user.games.size
    end
  end
  
end
