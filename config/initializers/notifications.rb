# Subscribe to the rack.attack notifications and check what type of match
# was triggered. In this case, we are looking for throttled events. We have access
# to the request object, allowing us to pull out the user's IP address
# ref: https://blog.codeship.com/building-a-json-api-with-rails-5/

ActiveSupport::Notifications.subscribe('rack.attack') do |name, start, finish, request_id, req|
  if req.env['rack.attack.match_type'] == :throttle
    Rails.logger.info "Throttled IP: #{req.ip}"
  end
end
