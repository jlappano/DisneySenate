DisneySenate::Application.routes.draw do
resources :senators, only: [:index, :show, :create, :new]
end
