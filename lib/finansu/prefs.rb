require 'yaml'

module FinAnSu
  module Prefs
    extend self
    SavePath = File.dirname(__FILE__) + "/prefs.yml"

    def get(key, default_value = nil)
      @prefs ||= {}
      if @prefs.has_key?(key)
        @prefs[key]
      else
        default_value
      end
    end

    def set(key, value)
      @prefs ||= {}
      @prefs[key] = value
    end

    def load
      if File.exist?(SavePath)
        output = File.new(SavePath, "r")
        @prefs = YAML.load(output.read)
        output.close
      else
        @prefs = {}
      end
    end

    def save
      @prefs ||= {}
      output = File.new(SavePath, "w")
      output.puts YAML.dump(@prefs)
      output.close
    end
  end
end
