OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #certifica
  provider :google_oauth2, '148107043928-pham2kio1c6gdusacmfrs55t3ie1mlo3.apps.googleusercontent.com', 'gPg_RDQ-Er0cAEpyxcKf3_sf', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  #produccion
  #provider :google_oauth2, '431902745205-tm5jap6i7pukh4mklgg9n4v5jv27k7jd.apps.googleusercontent.com', 'JTApIRdK6AkAIEFVFfgeJu-p', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end