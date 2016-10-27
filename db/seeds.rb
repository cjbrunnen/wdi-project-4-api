["users", "posts"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

user1 = User.create!(
  username: "Joanne",
  first_name: "Joanne",
  last_name: "Barlow",
  image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/8/000/1f7/109/246c2db.jpg",
  crb: true,
  email: "joanne.barlow@something.com",
  password: "password",
  password_confirmation: "password"
)

user2 = User.create!(
  username: "James",
  first_name: "James",
  last_name: "Ham",
  image: "http://cdn.militaryspouse.com/wp-content/uploads/2015/08/homeschooling2.jpg",
  crb: false,
  email: "james.ham@something.com",
  password: "password",
  password_confirmation: "password",
)

user3 = User.create!(
  username: "Anna the sitter",
  first_name: "Anna",
  last_name: "Marty",
  image: "https://foreverblackeffusion.files.wordpress.com/2016/03/fb_img_1457344220634.jpg",
  crb: false,
  email: "anna.marty@something.com",
  password: "password",
  password_confirmation: "password",
)

user4 = User.create!(
  username: "Sleeping lions",
  first_name: "John",
  last_name: "Marks",
  image: "http://www.fggam.org/wp-content/uploads/2013/11/single-Dad.jpg",
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
  location: "Shoreditch.",
  lat: "51.533496",
  lng: "-0.089175"
)

post2 = user2.posts.create!(
  title: "Dad needs a night off",
  role: "parent",
  description: "I have three children, all under the age of 6. Whilst they are my little darlings, I am searching for some regular care, once a fortnight to free up some time for my work. If you are available across a long period of time and you like kids please call me on 0789*******. Thanks.",
  sex: "male",
  location: "Bexlyheath.",
  lat: "51.454004",
  lng: "0.131895"
)

post3 = user2.posts.create!(
  title: "Anna cares",
  role: "sitter",
  description: "I am an experienced childminder and am capable of looking after more than one child at a time. I am available for one-off or regular care around the South-east London area. Please call me on 0755*******. Thanks.",
  sex: "female",
  location: "Christchurch Road, Sidcup.",
  lat: "51.428161",
  lng: "0.097908"
)

post4 = user4.posts.create!(
  title: "fully qualified and great with kids",
  role: "sitter",
  description: "I am available for evening babysitting in the Forrest Hill area. Children from 1-10 years old. I don't like to be out past 1am as I have a day-job. Please call me on 0712*******. Thanks.",
  sex: "female",
  location: "South Road, Forrest Hill.",
  lat: "51.437929",
  lng: "-0.049575"
)
