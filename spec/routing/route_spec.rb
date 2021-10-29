require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  it ' routes to welcome index action' do
    expect(get: '/').to route_to('api/v1/users#index')
  end

  it 'routes to users #create via POST ' do
    expect(post: '/v1/users').to route_to('api/v1/users#create')
  end

  it 'routes to users #show via GET' do
    expect(get: '/v1/users/1').to route_to('api/v1/users#show', id: '1')
  end

  it ' routes to cars #index via GET' do
    expect(get: '/v1/cars').to route_to('api/v1/cars#index')
  end

  it 'routes to cars #show via GET ' do
    expect(get: '/v1/cars/1').to route_to('api/v1/cars#show', id: '1')
  end

  it 'routes to users #new_appointment via POST' do
    expect(post: '/v1/appointments').to route_to('api/v1/users#new_appointment')
  end
end
