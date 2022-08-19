def seed_users
  10.times do |index|
    User.create!(
      email: "user#{index}@email.com",
      password: '123123',
      firstname: Faker::Name.first_name,
      lastname: Faker::Name.last_name,
      username: Faker::Internet.username
    )
  end
end
