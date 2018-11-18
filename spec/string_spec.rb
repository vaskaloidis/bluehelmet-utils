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
    expect('false'.to_b).to eq false
    #   TODO: Check it raises an exception for anything else
  end

  it 'returns true? method returns true for explicit strings' do
    expect('true'.true?).to eq true
    expect('truue'.true?).to eq false
  end

  it 'returns strings with-out spacers' do
    expect('-a --volume'.spacer).to eq '-a --volume'
    expect('-b '.spacer).to eq '-b '
    expect('-c flag_blank_space '.spacer).to eq '-c flag_blank_space  '
  end

  it 'returns a spacer under one condition' do
    expect(''.spacer).to eq ''
    expect(' '.spacer).to be eq ' '
    expect('  '.spacer).to be eq '  '
    expect('   '.spacer).to be eq '   '
  end

end
