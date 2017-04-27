def sign_up(name="Rob Brentnall", email="example@example.com", pw="strongpassword", pw_conf="strongpassword")
  visit '/users/sign_up'
  fill_in :user_name, with: name
  fill_in :user_email, with: email
  fill_in :user_password, with: pw
  fill_in :user_password_confirmation, with: pw_conf
  click_button "Sign up"
end
def sign_out
  visit '/'
  click_link "Log out"
end
def sign_in(email="example@example.com", pw="strongpassword")
  visit '/users/sign_in'
  fill_in :user_email, with: email
  fill_in :user_password, with: pw
  click_button "Sign in"
end
