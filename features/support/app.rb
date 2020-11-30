# frozen_string_literal: true

# Site representation
class App
  def account
    Account.new
  end

  def home
    Home.new
  end

  def login
    Login.new
  end
end
