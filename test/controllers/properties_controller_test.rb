require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  describe 'GET /categories' do
    # make HTTP get request before each example
    before { get '/' }
    it 'returns categories' do
      expect(json).not_to be_empty
      expect(json.size).to eq(7)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
