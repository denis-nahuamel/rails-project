class PropertiesController < ApplicationController
  def index
    client = EasyBroker.client
    # client.properties.find('EB-123')
    # client.properties.find('EB-123')
    client.properties
    @properties = client.properties.search # results is an enumerator


    # @properties = client.properties # results is an enumerator
    puts "******************"
    p @properties
    # @properties = client.properties.search(search: { statuses: [:published] }, limit: 10, page: 1) # results is an enumerator
    # @properties = results.total 
  end
end
