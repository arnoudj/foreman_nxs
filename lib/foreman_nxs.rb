module ForemanNxs
  require 'foreman_nxs/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3

  # Enable Apipie validation
  Apipie.configure do |config|
    config.validate = true
  end
end
