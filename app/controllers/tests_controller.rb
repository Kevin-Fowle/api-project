require 'httparty'
get '/tests' do

  @new_test_id = HTTParty.get("https://api-sandbox.traitify.com/v1/assessments?temp_key=i0fbrjancasvgcvlep3cf3d15j", { "Content-Type" => "application/json", "deck_id" => "career-deck" });
  p "========="
  p @new_test_id.parsed_response
  p "========="
  erb :'tests/index'
end

get '/temp_key' do
  p "temp key"
  p params

end