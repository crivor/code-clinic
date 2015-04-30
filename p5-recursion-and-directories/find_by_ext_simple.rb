#! /usr/bin/env ruby

require 'pathname'

# Assign a working Directory
current_dir = File.expand_path(File.dirname(__File__))
work_dir = File.join(this_dir, 'images')

puts "**Finding Images**"
files = Dir.glob('**/*.{jpg,jpeg,png,gif,tif}')
files.each do |file|
  puts "#{File.basename(file)}"
end

 
