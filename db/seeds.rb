case Rails.env
when "development"

	User.create!(
		name: "Example User",
		email: "example@railstutorial.org",
		password: "foobar",
		password_confirmation: "foobar",
		admin: true,
		activated: true,
		activated_at: Time.zone.now
		)

	User.create!(
		name: "DK",
		email: "kuzi81@gmail.com",
		password: "12345678",
		password_confirmation: "12345678",
		admin: true,
		activated: false,
		activated_at: Time.zone.now
		)

	99.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@railstutorial.org"
		password = "password"
		User.create!(
			name: name,
			email: email,
			password: password,
			password_confirmation: password,
			activated: true,
			activated_at: Time.zone.now
			)
	end

	# Microposts
	users = User.order(:created_at).take(6)
	50.times do
	  content = Faker::Lorem.sentence(5)
	  users.each { |user| user.microposts.create!(content: content) }
	end

	# Following relationships
	users = User.all
	user = users.first
	following = users[2..50]
	followers = users[3..40]
	following.each { |followed| user.follow(followed) }
	followers.each { |follower| follower.follow(user) }


	#Installation
	Installation.create!(
	  name: "GIMP",
	  version: "1.1",
	  os: "linux",
		source_link: "gimp.com",
		user_id: 1
		)

	Installation.create!(
	  name: "Firefox",
	  version: "40.1",
	  os: "linux",
		user_id: 1
		)

	Installation.create!(
	  name: "VLC",
	  version: "4.1",
	  os: "linux",
		user_id: 1
		)

	#Line
	Line.create!(
	  content: "sudo apt-get update",
	  index: 0
		)


	Line.create!(
	  content: "line for test 2",
	  index: 2
		)

	Line.create!(
	  content: "line for test 3",
	  index: 3
		)

	Line.create!(
	  content: "line for test 4",
	  index: 4
		)


	#Step

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 0
		)


	Step.create!(
		installation_id: 1,
		line_id: 1,
		order: 1
		)

	Step.create!(
		installation_id: 1,
		line_id: 2,
		order: 3
		)

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 5
		)

	Step.create!(
		installation_id: 1,
		line_id: 4,
		order: 7
		)

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 8
		)

	Step.create!(
		installation_id: 1,
		line_id: 2,
		order: 6
		)

	Step.create!(
		installation_id: 1,
		line_id: 1,
		order: 4
		)

	Step.create!(
		installation_id: 1,
		line_id: 4,
		order: 2
		)

	Step.create!(
		installation_id: 1,
		line_id: 1,
		order: 9
		)

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 10
		)

	Step.create!(
		installation_id: 2,
		line_id: 1,
		order: 0
		)

	Step.create!(
		installation_id: 2,
		line_id: 4,
		order: 1
		)

	Step.create!(
		installation_id: 2,
		line_id: 2,
		order: 2
		)

	Step.create!(
		installation_id: 2,
		line_id: 3,
		order: 3
		)

when "test"

	User.create!(
		name: "Example User",
		email: "example@railstutorial.org",
		password: "foobar",
		password_confirmation: "foobar",
		admin: true,
		activated: true,
		activated_at: Time.zone.now
		)

	User.create!(
		name: "DK",
		email: "kuzi81@gmail.com",
		password: "12345678",
		password_confirmation: "12345678",
		admin: true,
		activated: false,
		activated_at: Time.zone.now
		)

	10.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@railstutorial.org"
		password = "password"
		User.create!(
			name: name,
			email: email,
			password: password,
			password_confirmation: password,
			activated: true,
			activated_at: Time.zone.now
			)
	end

	# Microposts
	users = User.order(:created_at).take(6)
	50.times do
	  content = Faker::Lorem.sentence(5)
	  users.each { |user| user.microposts.create!(content: content) }
	end

	# Following relationships
	users = User.all
	user = users.first
	following = users[2..5]
	followers = users[3..4]
	following.each { |followed| user.follow(followed) }
	followers.each { |follower| follower.follow(user) }


	#Installation
	Installation.create!(
	  name: "GIMP",
	  version: "1.1",
	  os: "linux",
		source_link: "gimp.com",
		user_id: 1
		)

	Installation.create!(
	  name: "Firefox",
	  version: "40.1",
	  os: "linux",
		user_id: 1
		)

	Installation.create!(
	  name: "VLC",
	  version: "4.1",
	  os: "linux",
		user_id: 1
		)

	#Line
	Line.create!(
	  content: "sudo apt-get update",
	  index: 0
		)


	Line.create!(
	  content: "line for test 2",
	  index: 2
		)

	Line.create!(
	  content: "line for test 3",
	  index: 3
		)

	Line.create!(
	  content: "line for test 4",
	  index: 4
		)


	#Step

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 0
		)


	Step.create!(
		installation_id: 1,
		line_id: 1,
		order: 1
		)

	Step.create!(
		installation_id: 1,
		line_id: 2,
		order: 3
		)

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 5
		)

	Step.create!(
		installation_id: 1,
		line_id: 4,
		order: 7
		)

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 8
		)

	Step.create!(
		installation_id: 1,
		line_id: 2,
		order: 6
		)

	Step.create!(
		installation_id: 1,
		line_id: 1,
		order: 4
		)

	Step.create!(
		installation_id: 1,
		line_id: 4,
		order: 2
		)

	Step.create!(
		installation_id: 1,
		line_id: 1,
		order: 9
		)

	Step.create!(
		installation_id: 1,
		line_id: 3,
		order: 10
		)

	Step.create!(
		installation_id: 2,
		line_id: 1,
		order: 0
		)

	Step.create!(
		installation_id: 2,
		line_id: 4,
		order: 1
		)

	Step.create!(
		installation_id: 2,
		line_id: 2,
		order: 2
		)

	Step.create!(
		installation_id: 2,
		line_id: 3,
		order: 3
		)

when "production"
	
	User.create!(
		name: "Chaos Predictor",
		email: "kuzi81@gmail.com",
		password_digest: "$2a$10$Uedhk9nAbE84J3j26DNPweeFdEs6dQzk9tK/ifZs.jm5J1fAkkGM.",
		admin: true,
		activated: true,
		activated_at: Time.zone.now
		)

end
