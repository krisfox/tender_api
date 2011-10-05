require 'rubygems'
require 'bundler/setup'

require File.join(File.dirname(__FILE__),'..', 'lib', 'tender_api') # and any other gems you need

Tender.auth = "3ed36f0bb33a78dbdd374fa2f9b960820261a575"
