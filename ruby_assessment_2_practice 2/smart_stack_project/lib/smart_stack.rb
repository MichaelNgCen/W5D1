require_relative "stack"
class SmartStack < Stack
    
    attr_reader :max_size
    
    def initialize(max_size)
        @max_size = max_size
        @underlying_array = []
    end

    def full?
        @underlying_array.length == @max_size
    end

    def push(*args)
        if (self.size + args.length) > @max_size
            raise "stack is full"
        else
            @underlying_array.push(*args)
        end
        @underlying_array.length    
    end

    def pop (*args)
        if self.empty?
            @underlying_array.drop(1)
        else
            @underlying_array.pop
        end
    end

end