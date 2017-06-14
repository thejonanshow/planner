require 'rails_helper'

RSpec.describe WorkoutsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http found (redirect, status 302)" do
      event = FactoryGirl.create(:event)
      workout = FactoryGirl.attributes_for(:workout, event_id: event.id)

      post :create, params: { workout: workout }

      expect(response).to have_http_status(:found)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #delete" do
    it "returns http success" do
      workout = FactoryGirl.create(:workout)
      delete :destroy, params: { id: workout.id }
      expect(response).to have_http_status(:success)
    end
  end

end
