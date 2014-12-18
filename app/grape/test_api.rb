module ChandoApi
  class TestAPI < Grape::API
    version 'v1'
    
    resource :init do
      get :ping do
        {hello: 'world'}
      end
    end
  end
end