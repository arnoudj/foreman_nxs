module Api
  module Nxs
    #class VhostsController < ActionController::Base
    class VhostsController < Api::Nxs::BaseController
      def index
        h = Host.find_by_name!(params[:host_id])

        @vhosts = h.puppetclasses.find_by_name!("nxs::apache").class_params.find_by_key("vhosts").value_for(h)
      end
    end
  end
end
