class EnquiryMailer < ApplicationMailer


  def response(enquiry)
    @enquiry = Enquiry.find(enquiry.id)
    mail to: enquiry.email, subject: 'Thanks for your enquiry!'
  end


  def received(enquiry)
    @enquiry = Enquiry.find(enquiry.id)
    mail to: "pete@coderfactory.com", subject: 'An enquiry has been recieved'
  end
end
