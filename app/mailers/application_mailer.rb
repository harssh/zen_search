# frozen_string_literal: true

# ApplicationMailer main class for mailer
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
