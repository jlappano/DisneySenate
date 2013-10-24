DisneySenate::Application.routes.draw do
 
  resources :disney_characters
  resources :senators do
      member do
        get 'disney'
      end
  end

end