#!/usr/bin/ruby -w

require 'rainbow'

## METHODS ##

def rainbow_banner
puts Rainbow("___").bg(:red).bright + Rainbow("___").bg(:green).bright + Rainbow("___").bg(:blue).bright + Rainbow("___").bg(:yellow).bright + Rainbow("___").bg(:cyan).bright + Rainbow("___").bg(:purple).bright
end

## MAIN ##

# create space
puts " "

# kernel
puts Rainbow("Kernel:").green + " " + Rainbow("#{`uname -smr`}").green

# up time
up = `cat /proc/uptime`.chomp #to_f ?
days = "#{up}/86400"
hours = "#{up}/3600%24"
mins = "#{up}/60%60"
puts Rainbow("Uptime:").green + " " + Rainbow("#{up}").green

#puts Rainbow("WM:").green + " " + Rainbow("#{ENV['XDG_CURRENT_DESKTOP']}").green
puts Rainbow("WM:").green + " " + Rainbow("Icewm2").green
puts " "
#puts Rainbow("Distro").green + Rainbow("#{`/etc/*release`}").green
puts Rainbow("Distro:").green + " " + Rainbow("Arch Linux").green
puts " "
#puts Rainbow("User:").green + " " + Rainbow("#{ENV['USER']}").green

puts Rainbow("(\u2310\u2022_\u2022)").green + " " + Rainbow("#{ENV['USER']}").green
puts " "

## END ##

print "#{rainbow_banner}"
