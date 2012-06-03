Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'KEY', 'SECRET'
  provider :facebook, 'KEY', 'SECRET', { :scope => 'email, offline_access, user_photos, publish_stream', :client_options => { :ssl => { :ca_path => "/etc/ssl/certs" } } }
  provider :linkedin, 'KEY', 'SECRET'
end
