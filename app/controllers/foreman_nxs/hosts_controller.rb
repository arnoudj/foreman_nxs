# Ensure that module is namespaced with plugin name
module ForemanNxs

  # Example: Plugin's HostsController inherits from Foreman's HostsController
  class HostsController < ::HostsController
    def vhost
      "tset".to_json
    end
  end
end
