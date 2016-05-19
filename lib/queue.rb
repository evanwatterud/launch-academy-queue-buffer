module Launch
  class QueueIsEmpty < StandardError
  end

  class Queue
    def initialize
      @stack = []
    end

    def enter(value)
      @stack.unshift(value)
    end

    def empty?
      @stack.empty?
    end

    def leave
      raise QueueIsEmpty if empty?
      @stack.pop
    end

    def peek
      @stack.last
    end
  end
end
