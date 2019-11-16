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
end
