require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "an array all bestsellers" do
      #create(:book_with_authors, authors_count: 15)
      books = create(:book_with_authors, 15)
      expect(assigns(:bestsellers.length)).to be <= 6
      expect(assigns(:bestsellers)).to match(books)
    end
  end

end
#https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md