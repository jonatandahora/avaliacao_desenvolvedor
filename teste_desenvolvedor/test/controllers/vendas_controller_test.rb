require 'test_helper'

class VendasControllerTest < ActionController::TestCase
  test "testar index" do
    get :index
    assert_response :success
  end

  test "testar upload" do
    test_file = fixture_path + "/files/dados.txt"
    file = Rack::Test::UploadedFile.new(test_file, "text/plain")
    post :show, :file => file
    assert_response :success
  end


end
