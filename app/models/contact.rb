class Contact < MailForm::Base
	attribute :name,   :validate => true 
    attribute :email,   :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i 
    attribute :message, :validate => true 
    attribute :nickname, :captcha => true 

    def headers 
	    {
			:subject => "Уведомление с сайта FFH.COM.UA",
		    :to => 'ettwband@gmail.com',
		    :from => 'noreply@ffh.com.ua'
	    }
  	end
end