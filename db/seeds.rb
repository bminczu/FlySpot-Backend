# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Review.destroy_all
# Post.destroy_all

user1 = User.create(username: "bart", password: "123")
user2 = User.create(username: "Mike", password: "456")
user3 = User.create(username: "John", password: "678")
user4 = User.create(username: "Dan", password: "8910")

post1 = Post.create(
image_url: "https://external-preview.redd.it/wuB3Er-yuy3GrB8ufuqFmWc1LSQb4O6kgeaHMdUWPNE.jpg?auto=webp&s=83eac8515f43f6acd2d1068200ec7098b970a449",
title: "Glass Dome Park",
user_id: 68,
address: "Glass Dome - Pacific Centre, West Georgia Street, Vancouver, BC, Canada",
latitude: 49.2830999,
longitude: -123.1184158,
category: "Park",
airspace: "Class A",
description: "Stopped here on my way back from work. Nice little park with a cool glass dome structure to fly around. I'd recommend coming here early morning or later in the afternoon as it can pretty crowded.",
authors_rating: 4,
video: ""
)


post2 = Post.create(
image_url: "https://ipt.imgix.net/200590/x/0/drone-photography28.jpg?w=860&h=480&fit=crop&auto=format%2C%20compress&dpr=2&ixlib=react-8.6.4",
title: "Swiss Mountain Vacation",
user_id: 68,
address: "Alps, Switzerland",
latitude: 46.818188,
longitude: 8.227511999999999,
category: "Nature",
airspace: "Class A",
description: "I recently came back vacation in Switzerland and got some amazing aerial shots of the Alps. I'll post a video sometime soon on my Youtube channel FrequentFlyer so go check it out! I mainly did some cinematic shots and a little bit of mountain diving to show of the views.",
authors_rating: 5,
video: ""
)



post3 = Post.create(
image_url: "https://i.ytimg.com/vi/_CpXa8K1BhI/maxresdefault.jpg",
title: "Abandoned Factory",
user_id: 69,
address: "Grayslake, IL, USA",
latitude: 42.34446639999999,
longitude: -88.04174599999999,
category: "",
airspace: "",
description: "This is a really cool spot not too far from where I live. Has great structures and gaps to shoot through and will for sure keep you entertained. Looks really great on video too just be careful cuz the area is kind of sketch..",
authors_rating: 5,
video: ""
)

post4 = Post.create(
image_url: "https://i.ytimg.com/vi/9Vt-6632mbE/maxresdefault.jpg",
title: "Office Building Dives",
user_id: 69,
address: "Cell Phone Lot, Chicago, IL, USA",
latitude: 41.9885638,
longitude: -87.886071,
category: "",
airspace: "",
description: "Cool office building with shiny windows that look really good on film. Did some slow flying along with a bit of freestyle and of course some dives. Definitely worth a look if you're in the area.",
authors_rating: 3,
video: "https://www.youtube.com/watch?v=8tByp0pYhBs&t=92s"
)

post5 = Post.create(
image_url: "https://i.vimeocdn.com/video/962293356_1280x720.jpg",
title: "GME Building",
user_id: 69,
address: "GameWorks Chicago – Schaumburg, North Martingale Road, Schaumburg, IL, USA",
latitude: 42.0392904,
longitude: -88.034016,
category: "",
airspace: "",
description: "Pretty average office park spot but the security is chill and won't kick you out. If you like doing some freestyle around buildings then check it out.",
authors_rating: 3,
video: "https://www.youtube.com/watch?v=8tByp0pYhBs&t=92s"
)

post6 = Post.create(
image_url: "https://i.ytimg.com/vi/k0lQHHiRLS4/maxresdefault.jpg",
title: "City View",
user_id: 70,
address: "Harbor Point, North Harbor Drive, Chicago, IL, USA",
latitude: 41.88489510000001,
longitude: -87.6153982,
category: "Urban",
airspace: "Class B",
description: "Awesome spot in the city. Great views but not the easiest to get to. Make sure you go to the west parking lot so you don't have to pay. Also, you'l need airspace authorization.",
authors_rating: 4,
video: ""
)

post7 = Post.create(
image_url: "https://www.dailyherald.com/storyimage/DA/20200818/SUBMITTED/200819272/AR/0/AR-200819272.jpg&updated=202008181136&MaxW=900&maxH=900&noborder&Q=80",
title: "Local Forrest Preserve",
user_id: 70,
address: "Forrest Preserve Drive, La Grange Park, IL, USA",
latitude: 41.8443692,
longitude: -87.8685404,
category: "Nature",
airspace: "Class A",
description: "Nice Forrest Preserve just off 45. I come here pretty often since its a nice big open space and doesn't ever get very crowded. The park has some nice ponds and creeks in it which makes for some nice shots especially around sunset.  Check out the YT video.",
authors_rating: 4,
video: "https://www.youtube.com/watch?v=hq9KSsBA6Jk"
)

post8 = Post.create(
image_url: "https://i.pinimg.com/originals/73/f8/9a/73f89a5137626e298f1c8bbbf69e0a3d.jpg",
title: "Duga-3 Antenna",
user_id: 70,
address: "Chernobyl, Kyiv Oblast, Ukraine",
latitude: 51.2763027,
longitude: 30.2218992,
category: "Industrial",
airspace: "Class C",
description: "Had a chance to visit the infamous town of Chernobyl. I took the opportunity of capturing some really cool footage especially of the Duga 3 massive antenna. Video coming soon.",
authors_rating: 5,
video: ""
)

post9 = Post.create(
image_url: "http://wgvcdd.com/wp-content/uploads/2019/01/aerial-photography-bird-s-eye-view-countryside-1677955.jpg",
title: "Lettuce Lake Park ",
user_id: 70,
address: "Lettuce Lake Park Trail, Tampa, FL, USA",
latitude: 28.0744452,
longitude: -82.37364830000001,
category: "Nature",
airspace: "Class B",
description: "Came across this park while driving up from Riverview and decided to check it out. I had a really good time flying here. There are a lot of trees to do some freestyle flying around but I also got a few nice sunset shots in the evening. I definitely recommend this spot if you're in the area.",
authors_rating: 4,
video: ""
)

# REVIEWS

review1 = Review.create(
    user_id: 70,
    post_id: 167,
    user_rating: 5,
    comment: "This place was awesome. I just went there this past weekend. You weren't kidding about it being sketchy! Thanks for the heads up."
)
 review2 = Review.create(
    user_id: 70,
    post_id: 167,
    user_rating: 5,
    comment: "I got some awesome shots here last week! I'll share the youtube link later today. Thanks for sharing it."
 )
  review3 = Review.create(
    user_id: 70,
    post_id: 167,
    user_rating: 5,
    comment: "This is probably my favorite spot to fly now. I was here for like two hours last night and didn't wanna leave but then I ran out of batteries.."
  )
  
  
  review4 = Review.create(
    user_id: 70,
    post_id: 167,
    user_rating: 4,
    comment: "Gonna hit this spot tonight! Looks awesome"
  )


  review5 = Review.create(
    user_id: 64,
    post_id: 176,
    user_rating: 5,
    comment: "Awesome spot. Thanks for the tip on the parking. Really helped me out!"
  )
 
  review6 = Review.create(
    user_id: 69,
    post_id: 176,
    user_rating: 3,
    comment: "I can't wait to check this spot out! Looks so cool."
  )


  review7 = Review.create(
    user_id: 69,
    post_id: 176,
    user_rating: 4,
    comment: "I plan on coming to this spot later this week. I'll let you know how it goes. Thanks for sharing!"
  )
 review8 = Review.create(
    user_id: 69,
    post_id: 176,
    user_rating: 3,
    comment: "Cool spot but kind of boring. I did get some cool footage of the city though!"
 )
