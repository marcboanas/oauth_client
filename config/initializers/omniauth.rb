require File.expand_path('lib/omniauth/strategies/todo', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  OAUTH_CONFIG = YAML.load_file("#{::Rails.root}/config/oauth.yml")[::Rails.env]
  provider :todo, OAUTH_CONFIG["app_id"], OAUTH_CONFIG["secret"]
end
