require 'test_api'


module ChandoApi
  class API < Grape::API
    # version 'v1', using: :header, vendor: 'init'
    format :json
    content_type :json, 'application/json'
    
    mount ChandoApi::TestAPI
    
    prefix '/'
    
    # get do
    #   {status: 0}
    # end
    #
    # route :any, '*path', :anchor => false do
    #   error!('404: Not Found', 404)
    # end
  end
end