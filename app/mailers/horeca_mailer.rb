class HorecaMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.horeca_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "igor.popelniuk@gmail.com",
         subject: "Заявка на обратную связь с ffh.com.ua"
  end
end
