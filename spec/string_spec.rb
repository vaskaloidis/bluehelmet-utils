require 'spec_helper'

describe String do

  it 'does nothings' do
    result = 'these_are_some_spaces'.uglify
    expect(result).to eq('these_are_some_spaces')
  end

  it 'converts spaces to underscores' do
    result = 'these are spaces'.uglify
    expect(result).to eq('these_are_spaces')
  end

  it 'converts uppercase to lowercase and spaces to underscores' do
    result = 'THESE aRE spAces'.uglify
    expect(result).to eq('these_are_spaces')
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
