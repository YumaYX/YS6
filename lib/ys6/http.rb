# frozen_string_literal: true

require "ferrum"

module YS6
  # http
  module Http
    class << self
      def get_body_contents(url)
        browser = Ferrum::Browser.new
        browser.go_to(url)
        body_content = browser.at_xpath("//body").property("innerHTML")
        browser.quit
        body_content
      end
    end
  end
end
