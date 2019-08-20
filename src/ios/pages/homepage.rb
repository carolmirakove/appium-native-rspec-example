# frozen_string_literal: true

require './src/pages/page'

# Homepage of the app for iOS app
class Homepage < Page
  EMAIL_FIELD   = { name: 'Email' }.freeze
  PASS_FIELD    = { name: 'Password' }.freeze
  LOGIN_BTN     = { name: 'Log in' }.freeze

  def page_displayed?
    displayed?(LOGIN_BTN)
  end

  def enter_email(email)
    enter(EMAIL_FIELD, email)
  end

  def enter_password(password)
    enter(PASS_FIELD, password)
  end

  def submit_login_form
    submit(LOGIN_BTN)
  end
end
