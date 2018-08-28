namespace :notification do
  desc "Sends SMS notification to administrator when a maintenace request is made."
  task sms: :environment do
    admin_users = AdminUser.all
    notification_message = "Please log into the maintenance management dashboard to view the request: https://ah-maintenance.herokuapp.com/"

    admin_users.each do |admin|
      AuditLog.create!()
      SmsTool.send_sms(number: admin.phone, message: notification_message)
    end
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
