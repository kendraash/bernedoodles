FactoryGirl.define do
  factory(:dog) do
    name("Zoe")
    date_of_birth Date.new(2005, 07, 1)
    sex("female")
  end

  factory(:litter) do
    due_date Date.new(2007, 01, 21)
  end

  factory(:puppy) do
    name("Tucker")
    date_of_birth Date.new(2007, 01, 21)
    sex("male")
    weight(2)
  end

  factory(:user) do
    email("skierash@gmail.com")
    password("password")
  end
end
