def create
  omniauth = request.env['omniauth.auth']
  if current_user
    current_user.authentications.find_or_create_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    flash[:notice] = "The authentication was successfull."
    redirect_to authentications_url
  else
    flash[:error] = "You have to be logged in to authenticate."
    redirect_to root_url
  end
end
