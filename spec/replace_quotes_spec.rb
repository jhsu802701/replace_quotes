require 'spec_helper'
require 'replace_quotes/version'
require 'string_in_file'

# True if files are identical; false otherwise
def filematch(file1, file2)
  system("diff #{file1} #{file2} > /dev/null")
end

describe ReplaceQuotes do
  it 'has a version number' do
    expect(ReplaceQuotes::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end

  system('rm -rf tmp1')
  system('cp -r test_files tmp1')
  file1a = 'tmp1/test1a.txt'
  file1b = 'tmp1/test1.txt'
  file2a = 'tmp1/test2a.txt'
  file2b = 'tmp1/test2.txt'
  file3a = 'tmp1/test3a.txt'
  file3b = 'tmp1/test3.txt'
  file4a = 'tmp1/test4a.txt'
  file4b = 'tmp1/test4.txt'
  file5a = 'tmp1/test5a.txt'
  file5b = 'tmp1/test5.txt'

  it 'handles file with double quotes only' do
    expect(filematch(file1a, file1b)).to eq(false)
    ReplaceQuotes.update(file1b)
    expect(filematch(file1a, file1b)).to eq(true)
  end

  it 'handles file with single and double quotes, no change' do
    expect(filematch(file2a, file2b)).to eq(true)
    ReplaceQuotes.update(file2b)
    expect(filematch(file2a, file2b)).to eq(true)
  end

  it 'handles file with single and double quotes, makes changes' do
    expect(filematch(file3a, file3b)).to eq(false)
    ReplaceQuotes.update(file3b)
    expect(filematch(file3a, file3b)).to eq(true)
  end

  it 'handles file with no quotes, no change' do
    expect(filematch(file4a, file4b)).to eq(true)
    ReplaceQuotes.update(file4b)
    expect(filematch(file4a, file4b)).to eq(true)
  end

  it 'handles file with #{}, no change' do
    expect(filematch(file5a, file5b)).to eq(false)
    ReplaceQuotes.update(file5b)
    expect(filematch(file5a, file5b)).to eq(true)
  end
end
