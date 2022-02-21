require "imghdr"

file_list = Dir.glob("testset/*.{jpg,jpeg,png,gif,im32,pbm,pgm,ppm,xbm,xpm,tiff,tif,rgb,webp,exr,ras}")

file_list.each do |file|
  puts "File: #{file}"
  puts "Type: #{Imghdr.what(file)}"
end