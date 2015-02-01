require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "CONSUMER_KEY_HERE"
  config.consumer_secret     = "CONSUMER_SECRET_HERE"
  config.access_token        = "ACCESS_TOKEN_HERE"
  config.access_token_secret = "ACCESS_TOKEN_SECRET_HERE"
end

random_cat = File.new("data/cats/#{ Random.rand(40) + 1 }.jpg")
client.update_with_media(". @ForkParker @devolverdigital @HotlineMiami give us a release date for Hotline Miami 2 please :(", random_cat)
