# frozen_string_literal: true
"# encoding: ISO-8859-1"
require_relative "imghdr/version"

module Imghdr
  class Error < StandardError; end
  # Your code goes here...
  def self.what(file)
    raise Error, "Path is only allowed to be a String" unless file.is_a?(String)
    raise Error, "File is not readable: #{file}" unless File.readable?(file)
    raise Error, "File not found: #{file}" unless File.exist?(file)
    raise Error, "File is not a file: #{file}" unless File.file?(file)
    raise Error, "File is empty: #{file}" if File.zero?(file)

    File.open(file, "rb") do |f|
      f = f.read(32)
      if f[6..9].include?("JFIF") or f[6..9].include?("Exif")
        return "jpeg"
      elsif f.include? "PNG"
        return "png"
      elsif f[0..7].include? "GIF89" or f[0..7].include? "GIF87"
        return "gif"
      elsif f[0..1].include? "BM" or f[0..1].include? "CI"
        return "bmp"
      elsif f[0..3].include? "RIFF" and f[8..11].include? "WEBP"
        return "webp"
      elsif f[0..3].include? "II" or f[0..3].include? "MM"
        return "tiff"
      elsif f[0..3].include? "P1" or f[0..3].include? "P4"
        return "pbm"
      elsif f[0..3].include? "P2" or f[0..3].include? "P5"
        return "pgm"
      elsif f[0..3].include? "P3" or f[0..3].include? "P6"
        return "ppm"
      elsif f[0..10].include? "#define "
        return "xbm"
      else
        f.force_encoding("UTF-8")
        if f[0..1] == "\u0001\xDA"       # \x01\xda
          return "rgb"
        elsif f[0..3] == "Y\xA6j\x95"  # "\x59\xA6\x6A\x95"
          return "rast"
        elsif f[0..3] == "v/1\u0001"  # "\x76\x2F\x31\x01"
          return "exr"
        else
          return nil # unknown
        end
      end
    end
  end
end
