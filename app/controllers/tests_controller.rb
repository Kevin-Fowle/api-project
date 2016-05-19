get '/tests' do

  @new_test_id = Test.take_test
  p @new_test_id

  p "here"
  erb :'tests/index'
end

get '/temp_key' do
  p "temp key"
  p params

  # get_new_assessment_id(call)
end