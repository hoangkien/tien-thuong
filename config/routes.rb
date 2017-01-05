Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :categories
  end
  namespace :admin do
    resources :products do 
      collection do 
        post "/image", to: "products#uploadImage"
      end
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"home#index"
  get "/detail", to: "products#detail"
  get "/gioi-thieu", to: "home#about"
  get "/lien-he", to: "home#contact"
  get "/quan-ao", to: "products#category"
  get "/gio-hang", to: "carts#index"
end
