Dado('que estou na tela de Login') do
  @test = LoginPage.new
  @test.load
 end
  
  Quando('eu preencher {string} e {string}') do |usuario, senha|
    @test.userLogin(usuario,senha)
  end
  
  Entao('devo ver a mensagem {string}') do |mensagem|
    @test.checkEmailMessageError(mensagem)    
  end