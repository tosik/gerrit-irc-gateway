$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))

require 'rubygems'
Bundler.require
require 'active_support/all'
 
Dir[File.join(File.dirname(__FILE__), "..", "lib", "**/*.rb")].each do |f|
  require f
end
 
RSpec.configure do |config|
end 