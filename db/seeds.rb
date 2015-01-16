User.create!(email: "d.newell1@outlook.com",
             password:              "daibhi1a",
             password_confirmation: "daibhi1a",)


user = User.first
40.times do
  content = Faker::Lorem.sentence(5)
  user.snippets.create!(title: "Test", content: content)
end