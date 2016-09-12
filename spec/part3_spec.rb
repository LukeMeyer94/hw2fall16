require 'part3.rb'

describe "dessert" do
  it "should define a constructor" do
#    lambda { Dessert.new('a', 1) }.should_not raise_error
    expect(lambda {Dessert.new('a', 1)}).not_to raise_error
  end
  %i(healthy? delicious?).each do |method|
    it "should define #{method}" do
#     Dessert.new('a',1).should respond_to method
      expect(Dessert.new('a',1)).to respond_to(method)
    end
  end
  it "should return true when asked if a dessert is delicious" do
    expect(Dessert.new("Something",398).delicious?).to be true
  end
  it "should return true when asked if a dessert is healthy only if that dessert is under 200 calories" do
    expect(Dessert.new("Something",398).healthy?).to be false
    expect(Dessert.new("Something",198).healthy?).to be true
  end
end

describe "jellybean" do
  it "should define a constructor" do
#    lambda { JellyBean.new('a', 1, 2) }.should_not raise_error
    expect(lambda { JellyBean.new('a', 1, 2) }).not_to raise_error
  end
  %i(healthy? delicious?).each do |method|
    it "should define #{method}" do
#      JellyBean.new('a',1, 2).should respond_to method 
      expect(JellyBean.new('a',1, 2)).to respond_to(method) 
    end
  end
  it "should return false when asked if black licorice jellybeans are delicious" do
    expect(JellyBean.new('jb',1, "Black Licorice").delicious?).to be false
  end
  it "should return true when asked if any other flacors are delicious" do
    expect(JellyBean.new('jb',1, "cherry").delicious?).to be true
  end
  it "should correctly implement parent method healthy" do
    expect(JellyBean.new("Something",398,"strawb").healthy?).to be false
    expect(JellyBean.new("Something",198,"blueb").healthy?).to be true
  end
end
