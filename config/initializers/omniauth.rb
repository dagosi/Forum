Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'byd9AA73ghWfsgvguMs9hg', 'dHqCsHZKevtKHjTjLlqb3s1YFiOA90LURralBREei4'
  provider :facebook, '341013839283786', '87a87e17c3774242410343d1f55fa646', { :scope => 'email, offline_access', :Display => 'popup', :client_options => { :ssl => { :ca_path => "/etc/ssl/certs" } } }
  provider :linkedin, 'dmj5hvgs987m', 'tUxpmTkdnmlcsTTH'
end
