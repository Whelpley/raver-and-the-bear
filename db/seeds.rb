#CLEAR DATABASE BEFORE SEEDING!
# Hard-coded single set

# Nuke everything - necessary?
# User.destroy_all
# Track.destroy_all
# Game.destroy_all

# Will need to .new then .save with real password
User.create(
  name: 'Billy',
  email: 'billy@email.com',
  password: 'password'
  )

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
  beats: 'DuuuuuuuuDUDuDUDuDUDuDUDuDuuuDU,'
  )

Track.create(
  title: 'Dub Step Concerto #5',
  artist: 'Skrillex',
  beats: 'WUB wub WUB WUUUUUUUUUBBBBB'
  )

Track.create(
  title: 'Duckface',
  artist: 'Ephwerd',
  beats: "Don\'t snapchat that duckface"
  )

game = Game.new(
  user_id: 1
  )
game.load_stats
game.save
