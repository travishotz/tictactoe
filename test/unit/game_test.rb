require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  context "associations"  do
    should "work for player x and player o" do
      game = FactoryGirl.create(:game)
      assert_not_nil game.player_x
      assert_not_nil game.player_o
    end
  end
end
