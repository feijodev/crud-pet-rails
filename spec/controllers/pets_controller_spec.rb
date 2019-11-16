require 'rails_helper'

RSpec.describe PetsController, type: :controller do
  describe "GET index" do
    it "assigns @pets" do
      pet = create(:pet)
      get :index
      expect(assigns(:pets)).to eq([pet])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "POST pets" do
    before do
      post :create
    end

    it "renders nothing when create" do
      expect(response.status).to eq(302)
    end

    it "redirect on finish" do
      expect(response.status).to eq(302)
    end
  end
end
