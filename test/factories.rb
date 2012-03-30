FactoryGirl.define do
  factory :user do
    name 'John'
  end
  
  factory :game do
    association :player_x, :factory => :user, :name => 'Bob'
    association :player_o, :factory => :user, :name => 'Jim'
  end
  
end