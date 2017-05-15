require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe '#index' do
    it 'shows all users' do
      get :index
      expect(response).to be_success
    end
  end

  describe '#new' do
    it 'assigns a new device' do
      get :new
      expect(response).to redirect_to events_path

    end

  end

  describe '#create' do
    it 'creates all users' do
      expect{
        post :create, event: FactoryGirl.attributes_for(:event)
      }.to change(Event, :count).by(1)
    end
  end

end