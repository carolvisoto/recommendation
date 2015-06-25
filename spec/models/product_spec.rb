require 'rails_helper'

RSpec.describe Product, :type => :model do

  it 'raise an exception when is trying to create an new product with an empty string' do
    expect{Product.create("")}.to raise_error(ArgumentError)
  end

  it 'has a product' do
    product = Product.create!(product: "Horror Movie")
    expect(product.id).to eql 1
  end

  it { should have_many(:users).through(:likes) }

end  