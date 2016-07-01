require "spec_helper"

describe Endpoints::DjcpMes do
  include Rack::Test::Methods

  describe "GET /djcp-mes" do
    it "succeeds" do
      get "/djcp-mes"
      expect(last_response).to be_successful
    end
  end
end
