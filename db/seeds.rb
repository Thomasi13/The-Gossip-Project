require 'faker'


10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     description: Faker::Lorem.sentences,
     email: Faker::Internet.email,
     age: Faker::Number.between(18,99),
     city_id: Faker::Number.between(1,10))
end


10.times do
  city = City.create(name: Faker::Name.name,
    postal_code: Faker::Address.zip_code)
end


10.times do
  gozip = Gozip.create(title: Faker::Lorem.sentences,
    content: Faker::Lorem.sentences,
    date: Faker::Date.forward(23),
    user_id: Faker::Number.between(1,10))
end


10.times do
  comment = Comment.create(content: Faker::Lorem.sentences,
  gozip_id: Faker::Number.between(1,10),
  user_id: Faker::Number.between(1,10))
end


10.times do
  like = Like.create(user_id: Faker::Number.between(1,10),
  gozip_id: Faker::Number.between(1,10))
end


10.times do
  private_message = PrivateMessage.create(content: Faker::Lorem.sentences,
  date: Faker::Date.forward(23))
end


10.times do
  tag = Tag.create(title: Faker::Fallout.faction)
end
