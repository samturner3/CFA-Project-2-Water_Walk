require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "new_resource_notification" do
    mail = UserMailer.new_resource_notification
    assert_equal "New resource notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
