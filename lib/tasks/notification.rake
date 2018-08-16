namespace :notification do
  desc "Sends SMS notification to administrator when a maintenace request is made."
  task sms: :environment do
    #Run when a request is made.
    #Send a message that has info on the request.
    # SmsTool.send_sms()
  end

end
