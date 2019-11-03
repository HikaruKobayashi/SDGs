class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: 'intern.h.kobayshi@gmail.com',
      to: 'xiaolinhikaru0719@gmail.com',
      subject: 'お問い合わせ'
    )
  end
end
