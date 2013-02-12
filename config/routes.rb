# All routes entered here will automatically be pulled in Foreman
Rails.application.routes.draw do

  namespace :api, :defaults => {:format => 'json'} do
    # Nxs Extensions to the API
    match '/hosts/:host/vhosts/:vhost', :to => 'foreman_nxs/hosts#vhost', :except => [:create]
  end
end
