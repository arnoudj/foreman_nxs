module Api
  class ResourcesController < Api::BaseController

    def api_version
      '1'
    end

    def index
      @data = Rails.root
    end

    def show
      h = Host.find_by_name!(params[:host_id])
      @data = h.puppetclasses.find_by_name!(params[:class_id]).class_params.find_by_key!(params[:id]).value_for(h)
      @data = Bundler.load.specs.find{|s| s.name == 'foreman_nxs'}
    end
  end
end

