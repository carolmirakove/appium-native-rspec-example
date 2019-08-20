# frozen_string_literal: true

require './src/pages/page'

# Homepage of the app for Android App
class Homepage < Page
  EMAIL_FIELD   = { id: 'etlEmail' }.freeze
  PASS_FIELD    = { id: 'etPassword' }.freeze
  LOGIN_BTN     = { id: 'btnLogin' }.freeze

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
