class PropertiesController < ApplicationController
  def index
    client = EasyBroker.client
    @properties = client.properties.search
  end
end
