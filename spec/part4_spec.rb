require 'part4.rb'

describe "Class" do
  it "should have an attr_accessor_with_history method" do
#    lambda { Class.new.attr_accessor_with_history :x }.should_not raise_error
    expect(lambda { Class.new.attr_accessor_with_history :x }).not_to raise_error
  end
  
  it "should work correctly with class Foo" do
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f.bar = 3
    expect(f.bar_history.to_s).to be == [nil, 1, 2, 3].to_s
  end
end

