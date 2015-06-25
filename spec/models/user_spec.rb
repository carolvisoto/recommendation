require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'has a user' do
    user = User.create!(name: "Julia")
    expect(user.id).to eql 1
  end

 it { should have_many(:products).through(:likes) }



end
