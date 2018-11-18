require 'os'

module Bluehelmet
  module OsxUtils

    def self.app_is_running?(app_name)
      `ps aux` =~ /#{app_name}/ ? true : false
    end

    def self.osx?
      OS.mac?
    end

    def self.linux?
      OS.linux?
    end

    def self.windows?
      OS.windows?
    end


  end
end