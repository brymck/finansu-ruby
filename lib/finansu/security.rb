require "net/http"
require "uri"

module FinAnSu
  class Security
    PriceRegex = '<div class="price">[^<]+<span class="amount">([0-9.,-]+)<\/span>'
    FirstBackref = 1

    def initialize(ticker)
      @ticker = ticker
    end

    def lookup
      url = URI.parse("http://www.bloomberg.com/")
      response = Net::HTTP.start(url.host, url.port) { |http|
        http.get("/apps/quote?ticker=#{@ticker}")
      }
      match = response.body.match(PriceRegex)
      if match.nil?
        "No match found."
      else
        match[FirstBackref]
      end
    end
  end
end
