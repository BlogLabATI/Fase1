Given /^I am authenticated$/ do
  email = 'julioj@julioj.com'
  password = '080190'
  
  Usuario.new(:email => email,
           :password => password,
           :password_confirmation => password).save!

  And %{I go to login}
  And %{I fill in "usuario_email" with "#{email}"}
  And %{I fill in "usuario_password" with "#{password}"}
  And %{I press "Sign in"}
end

Given /^I am not an authenticated$/ do
  visit('/usuarios/sign_out') # ensure that at least
end


