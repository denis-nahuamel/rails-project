require 'rails_helper'
RSpec.describe PropertiesController, :type => :controller do
   
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
  describe "GET json_response" do
    it "lenght different to zero" do
      get :properties_json
      if response.body.length != 0
        expect(response.body).not_to eq("No hay propiedades")
      end
    end
  end
end