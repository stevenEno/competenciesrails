class ConnectMailer < ApplicationMailer
    def connect_email(user:, professional:)
        @user = user
        @professional = professional
        @url  = 'http://example.com/login'
        mail(to: @professional.email, subject: 'Da Vinci Schools would like to connect')
    end
end
