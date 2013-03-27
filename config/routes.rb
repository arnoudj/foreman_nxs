# All routes entered here will automatically be pulled in Foreman
Rails.application.routes.draw do

  namespace :api, :defaults => {:format => 'json'} do
    namespace :nxs do
      constraints(:id => /[^\/]+/) do
        resources :hosts do
          namespace :apache do
            resources :vhosts, :except => :create
          end
        end
      end
    end
  end
end
