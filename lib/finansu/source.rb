module FinAnSu
  class Source
    attr_reader :url

    def initialize(url)
      @url = url
    end
  end

  class Bloomberg < Source
    def initialize(url)
      super(url)
    end
  end

  class Google < Source
    def initialize(url)
      super(url)
    end
  end

  class Yahoo < Source
    def initialize(url)
      super(url)
    end
  end
end
