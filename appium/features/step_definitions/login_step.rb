Dado("que acesso a tela de Login") do
  find_element(id: "qaninja.com.pixel:id/accountButt").click
end

Quando("eu faço login com {string} e {string}") do |email, pass|
  find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
  find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(pass)
  find_element(id: "qaninja.com.pixel:id/loginButt").click
end

Então("posso ver a tela minha conta") do
  find_element(id: "qaninja.com.pixel:id/accountButt").click
  conta = find_element(id: "qaninja.com.pixel:id/account")
  expect(conta.displayed?).to be true
end

Então("devo ver {string}") do |mensagem_esperada|
  popup = find_element(id: "android:id/message").text
  expect(popup).to eql mensagem_esperada
  log popup
end
