require './app/models/comedian.rb'
require './app/models/special.rb'

# require File.expand_path('../../config/environment.rb', __FILE__)

require "database_cleaner"
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

bill = Comedian.create(name: "Bill Burr", age: 50, city: "Los Angeles", deceased?: "false", disgraced?: "false", picture_url:"http://www.gstatic.com/tv/thumb/persons/68366/68366_v9_bb.jpg")
bill.specials.create(name: "Why Do I Do This?", image_url: "https://m.media-amazon.com/images/M/MV5BMjI3OTcxNTA1MV5BMl5BanBnXkFtZTgwNDY2MjA2MDE@._V1_.jpg", runtime: 52, watch_now_url: "https://www.youtube.com/watch?v=sa5C_CIbdw0")
bill.specials.create(name: "Let it Go", image_url: "https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_.jpg", runtime: 64, watch_now_url: "https://www.youtube.com/watch?v=uCJDLgQ6xFk&t=2464s")

dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "D.C.", deceased?: "false", disgraced?: "false", picture_url: "http://www.gstatic.com/tv/thumb/persons/15113/15113_v9_bb.jpg")
dave.specials.create(name: "Killin' Them Softly", image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg", runtime: 65, watch_now_url:"https://www.youtube.com/watch?v=FclScfPoKes&t=401s")

nick = Comedian.create(name: "Nick Swardson", age: 41, city:"Minneapolis", deceased?: "false", disgraced?: "false", picture_url: "https://pbs.twimg.com/profile_images/2171444160/Nick_Swardson_Picture_400x400.jpg")
nick.specials.create(name: "Taste It", image_url: """https://m.media-amazon.com/images/M/MV5BMTcwOWEyMWEtZGUzYy00NjlhLWJkMjItZjczMGI3MDg5NmRiXkEyXkFqcGdeQXVyNjgwMTUxMTI@._V1_.jpg", runtime: 54, watch_now_url: "https://www.youtube.com/watch?v=bHS6_gNBjnc&list=PLTuJsu6IzLS0a2PfoJ4sgjAs5IiXBE_21")


louis = Comedian.create(name: "Louis C.K." , age: 51, city: "D.C.", deceased?: "false", disgraced?: "true", picture_url: "https://upload.wikimedia.org/wikipedia/en/thumb/1/1e/C.s.lewis3.JPG/220px-C.s.lewis3.JPG")
louis.specials.create(name: "Shameless", image_url: "https://m.media-amazon.com/images/M/MV5BMjE4NjE1ODI5Ml5BMl5BanBnXkFtZTcwMTgxNjc0MQ@@._V1_.jpg", runtime: 115, watch_now_url: "https://www.youtube.com/watch?v=r4VvA_EaPLY", )
louis.specials.create(name: "Live at the Comedy Store", image_url: "https://m.media-amazon.com/images/M/MV5BODJlMmIyNjEtZDQ0ZS00MGIyLWEyZmYtOTQyYTQyMWJkODhmXkEyXkFqcGdeQXVyMjQ0ODQ0MzQ@._V1_SY1000_CR0,0,666,1000_AL_.jpg", runtime: 63, watch_now_url: "https://www.youtube.com/watch?v=L-tzccFSKq0")

patton = Comedian.create(name: "Patton Oswalt", age: 49, city: "Portsmouth", deceased?: "false", disgraced?: "false", picture_url: "http://www.gstatic.com/tv/thumb/persons/206756/206756_v9_ba.jpg")
patton.specials.create(name: "Finest Hour", image_url:"https://m.media-amazon.com/images/M/MV5BMjEyNTUxMTQ3OV5BMl5BanBnXkFtZTgwNDIyNjA2MDE@._V1_.jpg", runtime:62, watch_now_url: "https://www.youtube.com/watch?v=sgaTynnLoZU&list=PLGWCePdgnqHxUm0g989MZxeX--O04XcFR")

aziz = Comedian.create(name: "Aziz Ansari", age: 35, city: "Columbia", deceased?: "false", disgraced?: "uncertain", picture_url: "http://www.gstatic.com/tv/thumb/persons/533352/533352_v9_ba.jpg")
aziz.specials.create(name: "Intimate Moments for a Sensual Evening", image_url:"https://m.media-amazon.com/images/M/MV5BMTQyMzEyMTI5MV5BMl5BanBnXkFtZTgwMzM0NDA2MDE@._V1_.jpg", runtime: 67, watch_now_url: "https://www.youtube.com/watch?v=Ehj6te54rO0")

hannibal = Comedian.create(name: "Hannibal Burress", age: 35, city: "Chicago", deceased?: "false", disgraced?: "false", picture_url: "http://www.gstatic.com/tv/thumb/persons/584762/584762_v9_bb.jpg")
hannibal.specials.create(name: "Animal Furnace", image_url:"https://m.media-amazon.com/images/M/MV5BMjI4OTUxMTg1M15BMl5BanBnXkFtZTgwNDI1NjA2MDE@._V1_.jpg", runtime: 73, watch_now_url: "https://www.youtube.com/watch?v=ytuBNdhle3w&list=PLgovyy-RcZ2rhFfLu5TwaBXYCAgoUF2Gm")

patrice = Comedian.create(name: "Patrice O'Neal", age: 41, city: "Englewood", deceased?: "true", disgraced?: "false", picture_url: "http://www.gstatic.com/tv/thumb/persons/295913/295913_v9_ba.jpg")
patrice.specials.create(name: "Elephant in the Room", image_url:"https://m.media-amazon.com/images/M/MV5BMTM5MDUzNzI2N15BMl5BanBnXkFtZTgwNTE2NDA2MDE@._V1_.jpg", runtime: 77, watch_now_url: "https://www.youtube.com/watch?v=-dulGdlC6hs")