require 'rails_helper'

RSpec.describe "Api::Users", type: :request do
  describe "POST /api/users" do
    subject(:request) { post "/api/users", params: user_params }

    let(:user_params) { { email: "test@example.com", password: "password123" } }

    it "creates a new user with valid params" do
      expect { request }.to change(User, :count).by(1)
    end

    it "returns 200 ok" do
      request
      expect(response).to have_http_status(:ok)
    end

    context "when params is invalid" do
      before { user_params[:email] = "bad-email" }

      it "return unprocessable entity" do
         request
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "return errors" do
        request
        json = JSON.parse(response.body)
        expect(json['errors']).to be_present
      end
    end
  end

  describe "POST /api/users/sign_in" do
    subject(:request) { post "/api/users/sign_in", params: sign_in_params }

    let(:user) { create(:user, email: "test@example.com", password: "password123") }
    let(:sign_in_params) { { email: user.email, password: user.password } }


    it "returns 200 ok" do
      request
      expect(response).to have_http_status(:ok)
    end

    it "returns token" do
      request

      json = JSON.parse(response.body)
      expect(json.dig('data', 'token')).to be_present
    end

    context "when request with invalid credentials" do
      before { sign_in_params[:password] = "wrongpass" }

      it "returns unprocessable entity" do
        request
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "return errors" do
        request
        json = JSON.parse(response.body)
        expect(json['errors']).to be_present
      end
    end
  end

  describe "DELETE /api/users/sign_out" do
    subject(:request) { delete "/api/users/sign_out", headers: { "Authorization" => "Bearer #{user.auth_token}" } }

    let(:user) { create(:user, email: "test@example.com", password: "password123") }

    it "returns 200 ok" do
      request
      expect(response).to have_http_status(:no_content)
    end

    it "signs out with valid token" do
      expect { request }.to change { user.reload.auth_token }
    end

    context 'when not signed in' do
      subject(:request) { delete "/api/users/sign_out" }

      it "returns unprocessable entity" do
        request
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "return errors" do
        request
        json = JSON.parse(response.body)
        expect(json['errors']).to be_present
      end
    end
  end
end
