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

Track.create(
  title: 'Sandstorm',
  artist: 'Darude',
  # this is a hard one
  beats: 'DuuuuuuuuDUDuDUDuDUDuDUDuDuuuDU'
  )

game = Game.new(
  user_id: 1
  )
game.load_stats
game.save
