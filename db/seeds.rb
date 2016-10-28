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

user5 = User.create!(
  username: "Penny",
  first_name: "Penelope",
  last_name: "Le Freux",
  image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAgKAAAAJDFmNWVhZTE4LWM1NDUtNGRkYy05NzI3LWVhNWEwZTMxMjQ3YQ.jpg",
  crb: true,
  email: "penny@penny.com",
  password: "password",
  password_confirmation: "password",
)

user6 = User.create!(
  username: "Mum of Four!",
  first_name: "Angela",
  last_name: "Brady",
  image: "http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/928845_1464964380476594_887486623_n.jpg?ig_cache_key=MTA2MjcxMTE2MzU1NjQ2NDA4MA%3D%3D.2",
  crb: true,
  email: "angela@angela.com",
  password: "password",
  password_confirmation: "password",
)

user7 = User.create!(
  username: "Jeff101",
  first_name: "Jeff",
  last_name: "Acers",
  image: "http://soggyacres.com/wp-content/uploads/2015/01/jeff-kat-978x1024.jpg",
  crb: false,
  email: "jeff@jeff.com",
  password: "password",
  password_confirmation: "password",
)

user8 = User.create!(
  username: "Happy Nanny 89",
  first_name: "Mary",
  last_name: "Moore",
  image: "https://media.poetryfoundation.org/m/image/1928/mary-moore-easter.jpg",
  crb: true,
  email: "mary@mary.com",
  password: "password",
  password_confirmation: "password",
)

post1 = user1.posts.create!(
  title: "16 y/o looking for babysitting",
  role: "sitter",
  description: "I am on my summer holidays and will soon be studying nursing at college. I love looking after children and I'm first-aid trained.",
  telephone: "09887654432",
  sex: "female",
  location: "Shoreditch.",
  lat: "51.533496",
  lng: "-0.089175"
)

post2 = user2.posts.create!(
  title: "Dad needs a night off",
  role: "parent",
  description: "I have three children, all under the age of 6. Whilst they are my little darlings, I am searching for some regular care, once a fortnight to free up some time for my work. If you are available across a long period of time and you like kids please call me.",
  telephone: "07665432212",
  sex: "male",
  location: "Bexlyheath.",
  lat: "51.454004",
  lng: "0.131895"
)

post3 = user2.posts.create!(
  title: "Anna cares",
  role: "sitter",
  description: "I am an experienced childminder and am capable of looking after more than one child at a time. I am available for one-off or regular care around the South-east London area. Thanks.",
  telephone: "01223234456",
  sex: "female",
  location: "Christchurch Road, Sidcup.",
  lat: "51.428161",
  lng: "0.097908"
)

post4 = user4.posts.create!(
  title: "fully qualified and great with kids",
  role: "sitter",
  description: "I am available for evening babysitting in the Forrest Hill area. Children from 1-10 years old. I don't like to be out past 1am as I have a day-job. Thanks.",
  telephone: "01946227337",
  sex: "female",
  location: "South Road, Forrest Hill.",
  lat: "51.437929",
  lng: "-0.049575"
)

post5 = user5.posts.create!(
  title: "Very experienced and available most weekends.",
  role: "sitter",
  description: "Since my children have left home, I am finding more and more time to give back to the community.",
  telephone: "078833344652",
  sex: "female",
  location: "Surrey",
  lat: "51.097284",
  lng: "-0.379757"
)

post6 = user6.posts.create!(
  title: "Would love some help during the week.",
  role: "parent",
  description: "I am a mum of four and would love some help every Tuesday and Thursday.",
  telephone: "01732111222",
  sex: "female",
  location: "Surrey",
  lat: "51.085889",
  lng: "-0.418397"
)

post7 = user7.posts.create!(
  title: "2 very well behaved kids.",
  role: "parent",
  description: "Just looking for the occasional babysitting date but would like to find someone regular that my kids can get to know. Must hold a CRB check.",
  telephone: "01895778332",
  sex: "male",
  location: "Kent",
  lat: "51.216467",
  lng: "0.531576"
)

post8 = user8.posts.create!(
  title: "Happy to help.",
  role: "sitter",
  description: "I have lots of experience with children (and adults alike) and have been a babysitter since my teens.",
  telephone: "01778223223",
  sex: "female",
  location: "Kent",
  lat: "51.211588",
  lng: "0.320990"
)
