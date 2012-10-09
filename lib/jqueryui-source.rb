require "jqueryui-source/version"

# Check for Rails or Sprockets
if defined? ::Rails::Engine
  require "jqueryui-source/rails"
elsif defined? ::Sprockets
  require "jqueryui-source/sprockets"
end

module Jqueryui
  module Source
  end
end
