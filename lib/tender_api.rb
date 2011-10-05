$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'tender'
require 'paginated'
require 'tender/category.rb'
require 'tender/discussion.rb'
$LOAD_PATH.shift
ActiveResource::Base.send :include, Paginated