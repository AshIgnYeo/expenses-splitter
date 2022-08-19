def seed_participants
  users = User.all

  user1 = users[0]
  user2 = users[2]
  user3 = users[3]
  user4 = users[4]
  user5 = users[5]
  user6 = users[6]
  user7 = users[7]
  user8 = users[8]
  user9 = users[9]

  event = Event.first
  [user1, user2, user3].each do |user|
    Participant.create!(user:, event:)
  end
end
