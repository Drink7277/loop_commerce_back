require 'rails_helper'

RSpec.describe "Api::Products", type: :request do
  describe "GET /api/products" do
    let!(:product1) { create(:product, name: "Super Headphones", description: "Best sound quality", category: "Electronics") }
    let!(:product2) { create(:product, name: "Wireless Mouse", description: "Smooth and fast", category: "Electronics") }
    let!(:product3) { create(:product, name: "Coffee Mug", description: "Keeps your drink hot", category: "Drinkware") }

    it "returns a successful response" do
      get "/api/products"
      expect(response).to have_http_status(:ok)
    end

    it "returns a list of products" do
      get "/api/products"
      json = JSON.parse(response.body)
      expect(json.dig('data').size).to eq(3)
    end

    it "returns filtered products when search param is present" do
      get "/api/products", params: { search: "Headphones" }
      json = JSON.parse(response.body)
      names = json.dig('data').pluck('name')
      expect(names).to contain_exactly("Super Headphones")
    end

    it "returns filtered products when category param is present" do
      get "/api/products", params: { category: "Drinkware" }
      json = JSON.parse(response.body)
      names = json.dig('data').pluck('name')
      expect(names).to contain_exactly("Coffee Mug")
    end

    it "returns all categories" do
      get "/api/products"
      json = JSON.parse(response.body)
      expect(json.dig('meta', 'categories')).to match_array([ "Electronics", "Drinkware" ])
    end

    it "returns the total number of products" do
      get "/api/products"
      json = JSON.parse(response.body)
      expect(json.dig('meta', 'total')).to eq(3)
    end
  end
end
