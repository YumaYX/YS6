# frozen_string_literal: true

require_relative "ys6/version"

# ys6
module YS6
  class Error < StandardError; end

  LLM_MODEL = "gemma3"
end

Dir.glob("#{__dir__}/ys6/*.rb").each { |lib| require(lib) }
