require 'rails_helper'

RSpec.describe HomeController, type: :controller do

<<<<<<< HEAD
  describe "GET #view" do
    it "returns http success" do
      get :view
=======
  describe "GET #index" do
    it "returns http success" do
      get :index
>>>>>>> 4d2f2337bd60a51f6c6a9aea8544766e9c606105
      expect(response).to have_http_status(:success)
    end
  end

end
