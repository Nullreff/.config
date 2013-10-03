#!/usr/bin/env ruby

require 'fileutils'

configs = [
  'vimrc', 
  'xmonad', 
  'xmobarrc', 
  'gitconfig', 
  'gitignore', 
  'gemrc'
]

configs.each do |config|
  home_file = File.join(Dir.home, '.' + config)
  config_file = File.join(Dir.home, '.config', config)

  if File.symlink?(home_file)
    puts "#{config}: Already linked"

  elsif File.exist?(home_file)
    FileUtils.move(home_file, config_file)
    File.symlink(config_file, home_file)
    puts "#{config}: Moved existing file to .config"

  elsif File.exist?(config_file)
    File.symlink(config_file, home_file)
    puts "#{config}: Set link to existing file in .config"

  else
    puts "#{config}: Couldn't find file at the path '#{home_file}"

  end
end