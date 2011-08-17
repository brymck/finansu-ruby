module FinAnSu
  class Portfolio
    def initialize
      @securities = []
    end

    def [](index)
      @securities[index]
    end

    def []=(index, new_value)
      @securities[index] = new_value
    end

    def <<(security)
      @securities << security
    end

    def refresh
      @securities.each { |security| security.refresh }
    end
  end
end
