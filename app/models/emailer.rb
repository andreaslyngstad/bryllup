class Emailer < ActionMailer::Base
  
  def message(message)
      recipients "info@teatercamp.no"
      
      from message.email
      subject message.subject
      body :message => message
      content_type "text/html"
  end
  
  def registration(registration)
      recipients "info@teatercamp.no"
      
      from registration.biling_email
      subject registration.camp.name
      body :registration => registration
      content_type "text/html"
  end
end
