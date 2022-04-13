Sidekiq.configure_server do |config|
    config.redis = { password: 'MyPasswordHere123456' }
end
  
Sidekiq.configure_client do |config|
    config.redis = { password: 'MyPasswordHere123456' }
end
