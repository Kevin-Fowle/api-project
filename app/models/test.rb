require 'net/http'
class Test < ActiveRecord::Base

  def self.take_test
    # sends a request to take the test
    @request = HTTP.get("https://api-sandbox.traitify.com/v1/assessments?temp_key=i0fbrjancasvgcvlep3cf3d15j", { "Content-Type" => "application/json", "deck_id" => "career-deck" });

  end

  def self.get_test_result
    # After user takes a test, this is where we deal with the result
  end
end
