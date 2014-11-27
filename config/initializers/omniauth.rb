Rails.application.config.middleware.use OmniAuth::Builder do
  provider :frontdesk, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret, client_options: { site: 'https://circlecitysc.frontdeskhq.com' }
end
