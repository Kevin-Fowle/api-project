class Test < ActiveRecord::Base

  def self.take_test
    # sends a request to take the test
    response = HTTParty.post({ "*****" }:x
          https://api.traitify.com/v1/assessments
          { 'deck_id': 'career-deck' }
    )

  end

  def self.get_test_result
    # After user takes a test, this is where we deal with the result
  end
end
