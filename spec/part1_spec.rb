require 'part1.rb'

describe "#palindrome?" do
  it "should be defined" do
 #   lambda { palindrome?("Testing") }.should_not raise_error
    expect(lambda {palindrome?("Testing")}).not_to raise_error
  end
  
  it "should return true for palindromes" do
    expect(palindrome?("Madam, I'm Adam")).to be true
    expect(palindrome?("this doesn't make sense esnes ekam tnseod siht")).to be true
  end
  
  it "should return false for strings that are not palindromes" do
    expect(palindrome?("This is not a palindrome")).to be false
    expect(palindrome?("Test")).to be false
  end
end

describe "#count_words" do
  it "should be defined" do
#    lambda { count_words("Testing") }.should_not raise_error
    expect(lambda{count_words("Testing")}).not_to raise_error
  end
  it "should return a Hash" do
#    count_words("Testing").class.should == Hash
    expect(count_words("Testing")).to be_a_kind_of(Hash) 
  end
  it "should return the correct number" do
    expect(count_words("This is four words")[:word_count]).to eq(4)
    expect(count_words("This is now five words")[:word_count]).to eq(5)
  end
end
