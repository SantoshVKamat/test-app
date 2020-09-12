Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :photos do
  member do
    get 'preview'
  end
end

resources :photos do
  collection do
    get 'search'
  end
end


resources :comments do
  get 'preview', on: :new
end

end
