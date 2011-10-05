module Paginated
  
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      class << self
        alias_method_chain :instantiate_collection, :paginated
      end
    end
    
  end
  
  module ClassMethods
  
    def instantiate_collection_with_paginated(collection, prefix_options={})
      if collection.kind_of?(Hash)
        collection[self.collection_name].collect! { |record| instantiate_record(record, prefix_options) }
      else
        collection.collect! { |record| instantiate_record(record, prefix_options) }
      end
    end
  
  end
  
end
