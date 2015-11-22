User.create!(f_name: "Ghulam Murtaza",
						email: "gm@gmail.com",
						password:			   			 "asdfasdf",
						password_confirmation: "asdfasdf")

39.times do |n|
	name = Faker::Name.name
	email = "user.#{n+1}@gmail.com"
	password = "asdfasdf"
	User.create!(f_name: name,
	email: email,
	password:	password,
	password_confirmation: password)
end

users = User.order(:created_at).take(30)
30.times do
	content = Faker::Lorem.sentence(12)
	users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user = users.first
following = users[2..7]
followers = users[3..30]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }