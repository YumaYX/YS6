# frozen_string_literal: true

require "test_helper"

class TestYS6Ollama < Minitest::Test
  def test_a
    outcome = YS6::Ollama.about_page("http://localhost/")
    assert(outcome.size >= 1)
    assert_equal(String, outcome.class)
  end
end
