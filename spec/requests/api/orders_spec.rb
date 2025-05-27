require 'rails_helper'

RSpec.describe "Api::Orders", type: :request do
  describe "POST /api/orders" do
    let(:user) { create(:user) }
    let(:order_params) do
      {
        details: { items: [ { name: 'product_name' } ], customer: { email: 'test@test.com' } },
        total: 100.to_d
      }
    end

    context "with valid auth header" do
      subject(:request) { post "/api/orders", params: order_params, headers: { "Authorization" => "Bearer #{user.auth_token}" } }


      it "creates a new order" do
        expect { request }.to change(Order, :count).by(1)
      end

      it "returns created status" do
        request
        expect(response).to have_http_status(:created)
      end

      it "returns correct data" do
        request
        json = JSON.parse(response.body)

        expect(json.slice('details', 'total')).to eq(order_params.as_json)
      end

      it "assigns order for given user" do
        expect { request }.to change { user.orders.count }.by(1)
      end
    end

    context "without auth header" do
       subject(:request) { post "/api/orders", params: order_params }


      it "creates a new order" do
        expect { request }.to change(Order, :count).by(1)
      end

      it "returns created status" do
        request
        expect(response).to have_http_status(:created)
      end

      it "returns correct data" do
        request
        json = JSON.parse(response.body)

        expect(json.slice('details', 'total')).to eq(order_params.as_json)
      end

      it "create order without user" do
        request
        order = Order.last

        expect(order.user).to be_nil
      end
    end
  end
end
