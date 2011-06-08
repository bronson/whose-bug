#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.require

require 'hashie'
require 'feedzirra'
require 'json'


# If this works, the problem is solved.
# If it raises NoMethodError: undefined method `merge' then you've hit the bug

JSON.pretty_generate Hashie::Mash.new
