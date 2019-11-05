class Inquiry < ApplicationRecord
  def self.send_report
    UserMailer.report(User.first).deliver_now
  end
end