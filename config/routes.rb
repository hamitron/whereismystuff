Rails.application.routes.draw do

# keeping all of the user authentication and log-in through rails.
resources :users
resource :session, only: [:new, :create, :destroy]

#AngularJS serve-up
scope :api do
    resources :items, defaults: { format: :json }
end

root 'welcome#index'

end
