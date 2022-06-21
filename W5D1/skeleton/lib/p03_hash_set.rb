class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    @count += 1
    resize! if @count == num_buckets
    @store << key unless include?(key)
  end

  def include?(key)
    @store.include?(key)
  end

  def remove(key)
    @count -= 1 if @store.delete(key)

  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    # Get the old store and create a new one 
  end
end
