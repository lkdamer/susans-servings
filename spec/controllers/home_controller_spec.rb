require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe "get index" do
    it 'should have a response of 200' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
