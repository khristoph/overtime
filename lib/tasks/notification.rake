namespace :notification do
  desc "Sends SMS notification to administrator when a maintenace request is made."
  task sms: :environment do
    #Run when a request is made.
    #Send a message that has info on the request.
    # SmsTool.send_sms()
  end


  desc "Sends mail notifications to managers each day to inform of pending maintenace requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
