# frozen_string_literal: true

class TestMailer < ActionMailer::Base
  default from: 'from@example.com'

  def test
    mail(to: 'to@example.com')
  end
end
