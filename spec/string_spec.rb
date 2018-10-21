require 'spec_helper'

describe String do

  it 'uglify converts spaces to underscores' do
    result = 'these are spaces'.uglify
    expect(result).to eq('these_are_spaces')
  end

  it 'uglify converts uppercase to lowercase and spaces to underscores' do
    result = 'THESE aRE spAces'.uglify
    expect(result).to eq('these_are_spaces')
  end

  it 'returns string money method formats money' do
    skip 'Requires jeweler-utils to be published to rubygems'
    input = 50.45
    expect(input.money).to eq('$50.45')
  end

  it 'returns string to_b converts explicit boolean strings correctly' do
    expect('true'.to_b).to eq true
    expect('false'.to_b).to be false
    #   TODO: Check it raises an exception for anything else
  end

  it 'returns true? method returns true for explicit strings' do
    expect('true'.true?).to eq true
    expect('truue'.true?).to be false
  end

end
