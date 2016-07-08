require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "an array all bestsellers" do
     
      get :index

      books = create_list(:book, 9)
      bestsellers = assigns(:books)
      expect(bestsellers.length).to be <= 6
      expect(books).to include(*bestsellers)
    end
  end

end