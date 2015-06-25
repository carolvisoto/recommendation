require 'spec_helper'
require 'rails_helper'

describe RecommendationsController , :type => :controller do

    it "has http success" do
      get 'index'
      expect(response).to be_success
    end

    it do
      should route(:get, '/suggestion').
      to(controller: :recommendations, action: :suggestion)
    end


end  

 