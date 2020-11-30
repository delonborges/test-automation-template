Dado('que a área de login é acessada') do
  @app.login.load
end

Quando('efetuamos login com {string} e {string}') do |email, password|
  @app.login.login(email, password)
end

Então('o usuário {string} é apresentado na área logada') do |user|
  expect(@app.account.logged_user).to eql user
end

Então('a mensagem de alerta {string} é apresentada') do |message|
  expect(@app.login.alert_message).to include message
end
