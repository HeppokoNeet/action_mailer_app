require 'test_helper'
class UserMailerTest < ActionMailer::TestCase
    test "welcome" do
        email = UserMailer.with(to: "yuuyae9191@yahoo.co.jp", name: "Daime").welcome
        assert_mails(1){ email.deliver_now}
        assert_equal ["perfect_rails@example"],email.from
        assert_equal ["yuuyake9191@yahoo.co.jp"], email.to
        assert_equal "登録完了", email.subject
        assert_includes email.text_part.decoded, "daime"
        assert_includes email.html_part.decoded, "daime"
    end
end