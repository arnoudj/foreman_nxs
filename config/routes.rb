# All routes entered here will automatically be pulled in Foreman
Rails.application.routes.draw do

  namespace :api, :defaults => {:format => 'json'} do
    namespace :nxs do
      constraints(:id => /[^\/]+/) do
        resources :hosts do
          resource :apache, :controller => :apache do
            resources :vhosts, :except => :create, :controller => 'apache/vhosts'
          end
        end
      end
    end
  end
end
