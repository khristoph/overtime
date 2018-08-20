@user = User.create!(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon", last_name: "Snow",
                    phone: "1234567890")
puts "1 User created"

AdminUser.create!(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Snow",
                 phone:1234567899)
puts "Admin Created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices enim urna, quis consectetur nibh dapibus ac. Curabitur augue lorem, semper non sagittis in, commodo mattis dui. Curabitur rhoncus efficitur purus quis scelerisque. In luctus neque eu arcu auctor interdum. Sed tempus condimentum magna, accumsan condimentum nunc maximus eget. Quisque quis nunc non lacus dignissim tempor. Donec faucibus, neque quis blandit interdum, ipsum metus posuere enim, eleifend consequat ipsum ante in nisi. Nunc euismod dolor ut nibh sollicitudin dignissim.", user_id: @user.id, overtime_request: 2.5)
end
puts "100 posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

