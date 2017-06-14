require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe '#index' do
    it 'returns 200' do
      get :index
      expect(response).to be_success
    end
  end

  describe '#create' do
    it 'redirects to the events path' do
      post :create, params: { event: FactoryGirl.attributes_for(:event) }
      expect(response).to redirect_to events_path
    end

    it 'creates an event' do
      expect{
        post :create, params: { event: FactoryGirl.attributes_for(:event) }
      }.to change(Event, :count).by(1)
    end
  end

end
