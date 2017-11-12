require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do
  it "should get index" do
     get :index
     expect(response).to be_success
     expect(assigns(:artists)).not_to eq(nil)
   end
end
