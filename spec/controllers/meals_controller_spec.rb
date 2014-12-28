require 'rails_helper'

RSpec.describe MealsController, :type => :controller do
  describe "GET show" do
    it 'should return ok 200' do
      get :show, id: 1
      expect(response.status).to eq(200)
    end
  end

  describe "POST create" do
    it 'should redirect to show' do
      post :create
      expect(response).to redirect_to meals_path
    end
  end
end
