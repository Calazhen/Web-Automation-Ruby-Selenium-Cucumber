class LoginPage < SitePrism::Page
    set_url ''
    element :emailField, :id, "user"
    element :passwordField, :id, "password"
    element :loginButton, :id, "btnLogin"
    element :emailError, :xpath, '//*[@id="login_area"]/div/div/div/div/div[1]/span'
  
    def userLogin(usuario, senha)
      emailField.set(usuario)
      sleep 1
      passwordField.set(senha)
      sleep 1
      loginButton.click
    end
  
    def checkEmailMessageError(mensagem)
      expect(emailError.text).to eql mensagem
      
    end
  end
  