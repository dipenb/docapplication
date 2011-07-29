::Refinery::Application.routes.draw do
  resources :patients, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :patients, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
