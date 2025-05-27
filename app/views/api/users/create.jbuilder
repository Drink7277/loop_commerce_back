json.data do
  json.email @user.email
  json.token @user.auth_token
end
