require 'rails_helper'

RSpec.describe "Franquias", type: :request do
  describe "GET /franquias" do
    it "works! (now write some real specs)" do
      get franquias_path
      expect(response).to have_http_status(200)
    end
  end
end
