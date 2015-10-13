class SendMailJob < ActiveJob::Base
  queue_as :default

  def perform(user)
  	@user = user
    # Do something later
    AdminMailer.new_user(@user).deliver_later
  end
end
