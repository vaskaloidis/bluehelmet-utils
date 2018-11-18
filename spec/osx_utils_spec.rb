require 'spec_helper'

describe Object do

  it 'does nothings' do
    result = 'not_an_object'.uglify
    expect(result).to eq('not_an_object')
  end


end
