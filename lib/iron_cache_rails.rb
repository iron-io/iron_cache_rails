require 'rest'
require_relative "iron_cache_rails/version"

# session store
if defined? ActionDispatch
  require_relative 'action_dispatch/session/iron_cache'
end
