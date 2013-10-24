DisneySenate::Application.routes.draw do
 
  resources :disney_characters
  resources :senators do
    collection do
      get 'search'
    end
    member do
      get 'disney'
    end
  end

  root :to => "senators#search"
end