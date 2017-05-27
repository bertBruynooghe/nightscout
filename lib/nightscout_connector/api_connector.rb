require 'open-uri'

module NightscoutConnector
  module ApiConnector
    def entries
      result = []
      open("#{ENV['NIGHTSCOUT_URL']}/api/v1/entries", 'Accept' => 'application/json') { |f|
        f.each_line { |line| result << JSON.parse(line) }
      }
      result
    end
  end
end
