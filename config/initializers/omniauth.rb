OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '148107043928-pham2kio1c6gdusacmfrs55t3ie1mlo3.apps.googleusercontent.com', 'gPg_RDQ-Er0cAEpyxcKf3_sf', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end