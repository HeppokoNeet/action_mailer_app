class UserMailerPreview < ActionMailer:Preview
    def welcome
        UserMailer.with(to: "yuuyake9191@yahoo.co.jp", name: "daime").welcome
    end
end