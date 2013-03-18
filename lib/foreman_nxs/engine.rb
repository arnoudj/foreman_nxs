require 'foreman_nxs'

module ForemanNxs
  #Inherit from the Rails module of the parent app (Foreman), not the plugin.
  #Thus, inhereits from ::Rails::Engine and not from Rails::Engine
  class Engine < ::Rails::Engine

	# Include extenstions to models in this config.to_prepare block
    config.to_prepare do
    	# Example: Include host extenstions
        # ::Host.send :include, ForemanNxs::HostExtensions
    end

  end
end
