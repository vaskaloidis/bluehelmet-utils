require 'os'

module Bluehelmet
  module OsxUtils

    def self.app_is_running?(app_name)
      `ps aux` =~ /#{app_name}/ ? true : false
    end

    def self.osx?

    end

  end
end