module Api
  module Nxs
    #class VhostsController < ActionController::Base
    class VhostsController < Api::Nxs::BaseController

      api :GET, "/api/nxs/hosts/:host_id/apache/vhosts", "List all Apache virtual hosts defined for the specified host."

      def index
        h = Host.find_by_name!(params[:host_id])

        @vhosts = h.puppetclasses.find_by_name!("nxs::apache").class_params.find_by_key!("vhosts").value_for(h)
      end

      def show
        h = Host.find_by_name!(params[:host_id])

        @vhost = h.puppetclasses.find_by_name!("nxs::apache").class_params.find_by_key!("vhosts").value_for(h)[params[:id]]

        if @vhost
          @vhost
        else
          render "api/nxs/errors/not_found", :status => 404
          #head :status => 404
          return
        end
      end

      def update
        h = Host.find_by_name!(params[:host_id])

        lv = h.puppetclasses.find_by_name!("nxs::apache").class_params.find_by_key!("vhosts").lookup_values.find_or_create_by_match("fqdn=#{params[:host_id]}")
        @value = lv.value[params[:id]] or Hash.new
        @value['owner'] = params[:owner] if params[:owner]
        @value['aliases'] = params[:aliases] if params[:aliases]
        lv.value[params[:id]] = @value
        lv.save
        @value
      end

      def destroy
        h = Host.find_by_name!(params[:host_id])

        lv = h.puppetclasses.find_by_name!("nxs::apache").class_params.find_by_key!("vhosts").lookup_values.find_by_match("fqdn=#{params[:host_id]}")
        @value = lv.value.delete(params[:id])
        lv.save
      end
    end
  end
end
