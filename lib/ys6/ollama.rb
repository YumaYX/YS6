# frozen_string_literal: true

require "net/http"
require "uri"
require "json"

module YS6
  # ollama
  module Ollama
    class << self
      def about_page(url = "http://localhost/")
        prompt = "Read the content and summarize it in one or two sentences. Just give me the answer."
        content = YS6::Http.get_body_contents(url)
        proc_llm("#{prompt}\n---\n#{content}")
      end

      def proc_llm(prompt)
        response = send_llm_request(prompt)
        parse_llm_response(response)
      end

      private

      def build_llm_payload(prompt)
        {
          "model" => YS6::LLM_MODEL,
          "prompt" => prompt,
          "stream" => false
        }
      end

      def send_llm_request(prompt)
        url = URI.parse("http://localhost:11434/api/generate")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = (url.scheme == "https")
        http.read_timeout = 600

        request = Net::HTTP::Post.new(url.path, { "Content-Type" => "application/json" })
        request.body = build_llm_payload(prompt).to_json

        http.request(request)
      end

      def parse_llm_response(response)
        JSON.parse(response.body)["response"]
      end
    end
  end
end
