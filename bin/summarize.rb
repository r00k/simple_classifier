#!/usr/bin/env ruby

begin
        require 'rubygems'
        require 'dfhcc_classifier'
rescue
        require 'dfhcc_classifier'
end

require 'open-uri'

num = ARGV[1].to_i
num = num < 1 ? 10 : num

text = open(ARGV.first).read
puts text.gsub(/<[^>]+>/,"").gsub(/[\s]+/," ").summary(num)
