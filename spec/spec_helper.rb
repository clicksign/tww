$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'tww'
require 'byebug'

Dir[File.expand_path('../../spec/support/**/*.rb', __FILE__)].each do |file|
  require file
end
