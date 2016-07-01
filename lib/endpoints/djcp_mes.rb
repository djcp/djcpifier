module Endpoints
  class DjcpMes < Base
    namespace "/djcp-mes" do
      before do
        content_type :json, charset: 'utf-8'
      end

      get do
        MultiJson.encode 'djcp'
      end
    end
  end
end
