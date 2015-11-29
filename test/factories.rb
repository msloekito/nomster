FactoryGirl.define do
    factory :user do
    sequence :email do |n|
      "me#{n}@gmail.com"
    end
    password "password99"
    password_confirmation "password99"
  end
    
    factory :place do
        name "Swedish Fish"
        description "place for Swedish Fish"
        address "400 F Street, Davis CA 95616"
        user_id "2"
        association :user
    end
    
    factory :comment do
        message "this place sucks"
        rating "one_star"
    end
    #how to create factories that has_many relationships. e.g. a comment that belongs to a place
     
end
        
        