require 'part5.rb'

describe "CartesianProduct" do
  it "should exist" do
    expect(lambda { CartesianProduct.new([:a,:b],[4,5]) }).not_to raise_error
  end
  it "should form an appropriate array" do
    c = CartesianProduct.new([:a,:b],[4,5,6])
    expect(c.product).to be == [[[:a,4],[:a,5],[:a,6]],[[:b,4],[:b,5],[:b,6]]]
  end
end

