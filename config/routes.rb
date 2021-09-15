Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :trips do
  resources :likes, only: [:create, :destroy]
  
  end
  get 'maps/index' => 'maps#index'
  get 'venue/hokkaidou' => 'venue#hokkaidou'
  get 'venue/kantou' => 'venue#kantou'
  get 'venue/tyubu' => 'venue#tyubu'
  get 'venue/kinki' => 'venue#kinki'
  get 'venue/kyusyu' => 'venue#kyusyu'
  
  
  root 'trips#index'


  
end
