Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

Rack::Attack.throttle("requests by ip", limit: 5, period: 2.minutes) do |request|
  request.ip
end

Rack::Attack.throttled_response = lambda do |env|
  [ 503, {"Content-Type" => "application/json" }, ['{"error": "rate limit reached"}']]
end
