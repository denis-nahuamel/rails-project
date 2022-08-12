class PropertiesController < ApplicationController
  def index
    client = EasyBroker.client
    client.properties.find('EB-123')
    @properties = client.properties.search # results is an enumerator
  end
end
