# frozen_string_literal: true

# Login page
class Login < SitePrism::Page
  set_url '/index.php?controller=authentication'

  element :input_email, '#email'
  element :input_password, '#passwd'
  element :alert, '#center_column > div.alert.alert-danger > ol > li'

  def login(email, password)
    input_email.send_keys(email)
    input_password.send_keys(password)

    click_button 'Sign in'
  end

  def alert_message
    alert.text
  end
end
