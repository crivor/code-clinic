#! /usr/bin/env ruby

require 'pathname'

# Assign a working Directory
current_dir = File.expand_path(File.dirname(__File__))
work_dir = File.join(this_dir, 'images')

puts "**Finding Images**"

@img_ext = ['.jpg', '.jpeg', '.gif', '.png', '.tif']

folder_path = Pathname.new(work_dir)
files = gather(folder_path)
files.each do |file|
  puts "#{File.basename(file)}"
end


def gather(path)
  path.children.collect do |child|
    if child.file? && @img_ext.include?(File.extname(child))
      child
    elsif child.directory?
      gather
    end
  end.flatten.compact
end
 
