require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do

  context "GET new" do

    it "assigns a product to the view" do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
  end
end
