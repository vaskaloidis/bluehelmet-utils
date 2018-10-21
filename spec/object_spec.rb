require 'spec_helper'

describe Object do

  it 'does nothings' do
    result = 'not_an_object'.uglify
    expect(result).to eq('not_an_object')
  end

  it 'converts symbol to a string and nothing more' do
    result = :thesearespaces.uglify
    expect(result).to eq('thesearespaces')
  end

  it 'converts symbol to a string then uppercase to lowercase' do
    result = :THISisASyMBol.uglify
    expect(result).to eq('thisisasymbol')
  end

end
