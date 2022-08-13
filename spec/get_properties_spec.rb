require 'rails_helper'
RSpec.describe PropertiesController, :type => :controller do
   
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
  describe "GET JSON_RESPONSE" do
    it "LENGTH" do
      get :json_response
      expect(JSON.parse(response.body).length).to eq(7)
    end
  end
end