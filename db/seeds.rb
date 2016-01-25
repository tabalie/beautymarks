require 'faker'

# Create Topics
50.times do
 Topic.create!(
   title:  Faker::Lorem.sentence,
   body:   Faker::Lorem.paragraph

 )
end
topics = Topic.all

# Create Beautymarks
50.times do
 Beautymark.create!(
   title:  Faker::Lorem.sentence,
   body:   Faker::Lorem.paragraph,
   url:    Faker::Internet.url,
   image:  Faker::Placeholdit.image("300x300")

 )
end
beautymarks = Beautymark.all

# Create Comments
100.times do
 Comment.create!(
   beautymark: beautymarks.sample,
   body: Faker::Lorem.paragraph
 )
end

# Create Users
5.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

puts "Seed finished"
puts "#{Beautymark.count} beatymarks created"
puts "#{Topic.count} topics created"
puts "#{Comment.count} comments created"
puts "#{User.count} users created"
