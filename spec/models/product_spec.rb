require 'spec_helper'
require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with valid attributes" do
    expect(Product.new).to be_valid
  end

  it "has a name" do # yep, you can totally use 'it'
    product = Product.create!(name: "My Awesome Product Name") # creating a new idea 'instance'
    expect(product.name).to eq("My Awesome Product Name") # this is our expectation
  end
end