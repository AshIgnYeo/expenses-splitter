def seed_invites
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

  # seed friends
  Invite.create!(user: user1, friend: user2, accepted: true)
  Invite.create!(user: user1, friend: user3, accepted: true)
  Invite.create!(user: user1, friend: user4, accepted: true)
  Invite.create!(user: user1, friend: user5, accepted: true)
  Invite.create!(user: user1, friend: user6, accepted: true)

  Invite.create!(user: user2, friend: user3, accepted: true)
  Invite.create!(user: user2, friend: user4, accepted: true)
  Invite.create!(user: user2, friend: user5, accepted: true)
  Invite.create!(user: user2, friend: user6, accepted: true)

  Invite.create!(user: user3, friend: user5, accepted: true)
  Invite.create!(user: user3, friend: user6, accepted: true)
  Invite.create!(user: user3, friend: user7, accepted: true)
  Invite.create!(user: user3, friend: user8, accepted: true)

  # seed pending
  Invite.create!(user: user1, friend: user7, accepted: false)
  Invite.create!(user: user1, friend: user8, accepted: false)
  Invite.create!(user: user1, friend: user9, accepted: false)

  Invite.create!(user: user2, friend: user7, accepted: false)
  Invite.create!(user: user2, friend: user8, accepted: false)
  Invite.create!(user: user2, friend: user9, accepted: false)

  Invite.create!(user: user3, friend: user7, accepted: false)
  Invite.create!(user: user3, friend: user8, accepted: false)
  Invite.create!(user: user3, friend: user9, accepted: false)
end
