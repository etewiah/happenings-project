FactoryGirl.define do
  factory :flat_happening do
    name "Fiesta la latina"
    description_text  "Yearly fiesta in Madrid"
    city "Madrid"
    country "Spain"
  end

  # This will use the User class (Admin would have been guessed)
  # factory :admin, class: User do
  #   first_name "Admin"
  #   last_name  "User"
  #   admin      true
  # end
end