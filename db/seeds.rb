Status.create(name: 'Working', active: true)
Status.create(name: 'Not Working', active: false)

20.times do
  User.create do |user|
    user.name = Faker::Name.name
    user.email = Faker::Internet.email
    user.status = Status.last(2).sample
  end
end


100.times do
  Message.create do |message|
    message.user = User.all.sample
    message.content = Faker::Lorem.paragraph
    message.read = [true, false].sample
  end
end
