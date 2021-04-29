require "adyen-ruby-api-library"

class Adyencheckout < ApplicationRecord
  class << self


    def instantiate_checkout
      adyen = Adyen::Client.new
      adyen.api_key = ENV["ADYEN_API_KEY"]
      adyen.env = :test
      adyen
    end

  end
end
