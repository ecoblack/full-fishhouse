# Preview all emails at http://localhost:3000/rails/mailers/horeca_mailer
class HorecaMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/horeca_mailer/welcome
  def welcome
    HorecaMailer.welcome
  end

end
