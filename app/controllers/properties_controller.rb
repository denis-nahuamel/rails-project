class PropertiesController < ApplicationController
  def index
    client = EasyBroker.client
    @properties = client.properties.search
  end
  def properties_json
    client = EasyBroker.client
    properties = []
    counter = 0;
    client.properties.search.each do |property|
      counter +=1
      properties << property.title
    end
    if counter > 0
      render json: properties
    else
      render json:'No hay propiedades'
    end
  end
end
