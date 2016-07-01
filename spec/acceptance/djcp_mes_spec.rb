require "spec_helper"

describe Endpoints::DjcpMes do
  include Rack::Test::Methods

  describe 'GET /djcp-mes' do
    it 'correctly djcps a thing' do
      get '/djcp-mes'
      expect(last_response.body).to eq MultiJson.encode('djcp')
    end
  end
end
