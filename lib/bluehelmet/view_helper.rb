require 'action_view'

module Bluehelmet
  module ViewHelper
    include ActionView::Helpers::TagHelper
    include ActionView::Context

    def div(element_name, &block)
      tag.div class: element_name, id: element_name, &block
    end

    def row(&block)
      tag.div class: 'row', &block
      # tag.send(:div,class: 'row', &block)
    end

    def panel(&block)
      tag.div class: 'panel panel-default', &block
    end

    def panel_heading(&block)
      tag.div class: 'panel-heading', &block
    end

    def panel_body(&block)
      tag.div class: 'panel-body', &block
    end

    def column2(&block)
      tag.div class: 'col-xs-12 col-sm-2', &block
    end

    def column3(&block)
      tag.div class: 'col-xs-12 col-sm-3', &block
    end

    def column4(&block)
      tag.div class: 'col-xs-12 col-sm-4', &block
    end

    def column_half(&block)
      tag.div class: 'col-xs-12 col-sm-6', &block
    end

    def column8(&block)
      tag.div class: 'col-xs-12 col-sm-8', &block
    end

    def column10(&block)
      tag.div class: 'col-xs-12 col-sm-10', &block
    end

    def column(&block)
      tag.div class: 'col-xs-12', &block
    end

    def contact_support(msg = '')
      Rails.logger.error(msg)
      "#{msg} Contact Jeweler Support if the problem persists."
    end

  end
end