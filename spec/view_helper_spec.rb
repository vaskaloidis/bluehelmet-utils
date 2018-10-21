require 'spec_helper'

describe Bluehelmet::ViewHelper do
  include Bluehelmet::ViewHelper

  it 'returns a class col-xs-12 div' do
    result = div 'col-xs-12' do
      'div_content'
    end
    expect(result).to eq('<div class="col-xs-12" id="col-xs-12">div_content</div>')
  end

  it 'returns a class row div' do
    result = row do
      'div_content'
    end
    expect(result).to eq('<div class="row">div_content</div>')
  end

  it 'returns a panel div' do
    result = panel do
      'div_content'
    end
    expect(result).to eq('<div class="panel panel-default">div_content</div>')
  end

end