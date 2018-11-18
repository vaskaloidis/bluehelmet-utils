require "bluehelmet/version"

require 'bluehelmet/core_ext/object'
require 'bluehelmet/core_ext/string'
require 'bluehelmet/view_helper'
require 'bluehelmet/core_ext/array'
require 'bluehelmet/osx_utils'

module Bluehelmet
  include Bluehelmet::ViewHelper
  include Bluehelmet::OsxUtils
end
