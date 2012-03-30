class Game < ActiveRecord::Base
  
  belongs_to :player_o, :class_name => "User"
  belongs_to :player_x, :class_name => "User"
  
  # Score: 0 is Win, 1 is Loss, 2 is Tie for player_x
  #        0 is Loss, 1 is Win, 2 is Tie for player_o
  
  
end
