# frozen_string_literal: true

# Account page
class Account < SitePrism::Page
  set_url '/index.php?controller=my-account'

  element :user_info, 'div.header_user_info > a.account > span'

  def logged_user
    user_info.text
  end
end
