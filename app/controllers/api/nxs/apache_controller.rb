module Api
  module Nxs

    class ApacheController < Api::Nxs::BaseController

      def show
        h = Host.find_by_name!(params[:host_id])

        @data = {}
        @vhost = h.puppetclasses.find_by_name!("nxs::apache").class_params.each do |cp|
          @data[cp.key] = cp.value_for(h)
        end
        @data
      end

    end

  end
end
