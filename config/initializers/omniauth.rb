Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, Rails.application.credentials.dig(:twitter, :api_key), Rails.application.credentials.dig(:twitter, :api_secret)
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
