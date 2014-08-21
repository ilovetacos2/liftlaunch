class UserMailer < ActionMailer::Base
    default from: "iSkelter <welcome@iSkelter.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "#Shaving is evolving. Excited for @iSkelter to launch."

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
