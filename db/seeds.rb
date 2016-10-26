["users", "posts"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

user1 = User.create!(
  username: "Joanne",
  first_name: "Joanne",
  last_name: "Barlow",
  image: "http://www.placecage.com/200/300",
  crb: true,
  email: "joanne.barlow@something.com",
  password: "password",
  password_confirmation: "password"
)

user2 = User.create!(
  username: "James",
  first_name: "James",
  last_name: "Ham",
  image: "http://www.placecage.com/200/300",
  crb: false,
  email: "james.ham@something.com",
  password: "password",
  password_confirmation: "password",
)

user3 = User.create!(
  username: "Anna the sitter",
  first_name: "Anna",
  last_name: "Marty",
  image: "http://www.fillmurray.com/200/200",
  crb: false,
  email: "anna.marty@something.com",
  password: "password",
  password_confirmation: "password",
)

user4 = User.create!(
  username: "Sitting tiger",
  first_name: "Caz",
  last_name: "Brunnen",
  image: "http://www.placecage.com/c/200/300",
  crb: true,
  email: "caz@caz.com",
  password: "password",
  password_confirmation: "password",
)

post1 = user1.posts.create!(
  title: "16 y/o looking for babysitting",
  role: "sitter",
  description: "I am on my summer holidays and will soon be studying nursing at college. I love looking after children and I'm first-aid trained. Please call me on 0744*******. Thanks.",
  sex: "female",
  location: "St Charles' Street, Wandsworth."
)

post2 = user2.posts.create!(
  title: "Dad needs a night off",
  role: "parent",
  description: "I have three children, all under the age of 6. Whilst they are my little darlings, I am searching for some regular care, once a fortnight to free up some time for my work. If you are available across a long period of time and you like kids please call me on 0789*******. Thanks.",
  sex: "male",
  location: "Crown Street, Bexlyheath."
)

post3 = user2.posts.create!(
  title: "Anna cares",
  role: "sitter",
  description: "I am an experienced childminder and am capable of looking after more than one child at a time. I am available for one-off or regular care around the South-east London area. Please call me on 0755*******. Thanks.",
  sex: "female",
  location: "The Crescent, Sidcup."
)

post4 = user4.posts.create!(
  title: "fully qualified and great with kids",
  role: "sitter",
  description: "I am available for evening babysitting in the Hampstead area. Children from 1-10 years old. I don't like to be out past 1am as I have a day-job. Please call me on 0712*******. Thanks.",
  sex: "female",
  location: "The Crescent, Sidcup."
)
