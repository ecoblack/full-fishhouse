class Message < MailForm::Base 
    attribute :name,   :validate => true 
    attribute :email,   :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i 
    attribute :message_title, :validate => true 
    attribute :message_body, :validate => true 

    def headers 
    { 
     :subject => "A message", 
     :to => "contact@domain.com", 
     :from => %("#{name}" <"#{email}">) 
    } 
    end 
end 