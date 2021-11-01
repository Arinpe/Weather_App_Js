require 'rails_helper'

RSpec.describe Api::V1::CarsController, type: :controller do
  before { allow(controller).to receive(:authorized).and_return(true) }

  describe 'use authorize request before action' do
    context 'when authorized' do
      it { should use_before_action(:authorized) }
    end
  end

  describe 'GET /v1/cars' do
    before { get :index }

    context 'when authorized' do
      it { expect(response).to have_http_status(:ok) }
      it { expect(response.content_type).to include('application/json') }
    end
  end

  describe 'GET /v1/cars/1' do
    before { get :show, params: { id: 1 } }

    context 'when authorized' do
      it do
        should rescue_from(ActiveRecord::RecordNotFound)
          .with(:not_found)
      end
      it { expect(response).to have_http_status(:not_found) }
    end
  end
end
