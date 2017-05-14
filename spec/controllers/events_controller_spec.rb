require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET #index" do
    it 'shows all users' do
      get :index
      expect(response).to be_success
    end
  end

  describe '#create new item' do
    it 'creates all users' do
      expect{
        post :create, event: FactoryGirl.attributes_for(:event)
      }.to change(Event, :count).by(1)
    end
  end

end