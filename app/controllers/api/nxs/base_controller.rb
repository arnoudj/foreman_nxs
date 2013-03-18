module Api
  module Nxs
    class BaseController < Api::BaseController
      def api_version
        'nxs'
      end

      def render_error(error, options = { })
        render options.merge(:template => "/api/#{api_version}/errors/#{error}")
      end
    end
  end
end
