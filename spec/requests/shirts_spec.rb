require 'rails_helper'

RSpec.describe "Shirts", type: :request do
  describe "GET /shirts" do
    it "works! (now write some real specs)" do
      get shirts_path
      expect(response).to have_http_status(200)
    end
  end
end
