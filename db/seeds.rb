#CLEAR DATABASE BEFORE SEEDING!
# Hard-coded single set

# Nuke everything - is this even necessary?
# User.destroy_all
# Track.destroy_all
# Game.destroy_all

# Will need to .new then .save with real password
test_user = User.new(
  name: 'Billy',
  email: 'billy@gmail.com',
  password: '1234'
  )
test_user.save

# The (5) tracks
# (currently no ability for user to create tracks)

Track.create(
  title: 'Booing Boom Tschak',
  artist: 'Kraftwerk',
  # this is a hard one
  beats: 'BOING BOOM TSCHAK PING'
  )

Track.create(
  title: 'Boots and Cats',
  artist: 'DJ C&E',
  beats: 'BootsandCatsandBOOTSandCats,'
  )

Track.create(
  title: 'Sandstorm',
  artist: 'Darude',
  beats: 'Duuuuuuuu DUDuDUDuDUDuDUDuDuuuDU,'
  )

Track.create(
  title: 'Dub Step Concerto #5',
  artist: 'Skrillex',
  beats: 'Wubba WUB wub WUB WUUUUUUUUUBBBBB Wub'
  )

Track.create(
  title: 'Duckface',
  artist: 'Ephwerd',
  beats: "Don\'t snapchat that duckface"
  )

test_game = Game.new(
  user_id: 1
  )
test_game.load_stats
test_game.save
