class CartesianProduct
  include Enumerable
  
  attr_accessor :product

  def initialize(a,b)
    @a = a
    @b = b
    calculateProduct
  end
  
  def calculateProduct
    @product = Array.new
    for i in 0...@a.length
      @innerProduct = Array.new
      for j in 0...@b.length
        @innerProduct[j] = [@a[i],@b[j]]
      end
      @product[i] = @innerProduct
    end
  end
  
  def each(&block)
    @product.each do |p|
      p.each do |iP|
        block.call(iP)
      end
    end
  end

end

# c = CartesianProduct.new([:a,:b],[4,5])
# c.each { |elt| puts elt.inspect}