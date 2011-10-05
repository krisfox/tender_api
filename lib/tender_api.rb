require 'lib/tender'
require 'lib/paginated'
Dir[File.expand_path(File.join(File.dirname(__FILE__),'tender','*.rb'))].each {|f| require f}

ActiveResource::Base.send :include, Paginated