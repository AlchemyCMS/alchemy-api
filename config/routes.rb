# frozen_string_literal: true

Alchemy::Engine.routes.draw do
  namespace :api, defaults: { format: "json" } do
    resources :contents, only: [:index, :show]

    resources :elements, only: [:index, :show] do
      get "/contents" => "contents#index", as: "contents"
      get "/contents/:name" => "contents#show", as: "content"
    end

    resources :pages, only: [:index] do
      get "elements" => "elements#index", as: "elements"
      get "elements/:named" => "elements#index", as: "named_elements"
      collection do
        get :nested
      end
    end

    get "/pages/*urlname(.:format)" => "pages#show", as: "page"
    get "/admin/pages/:id(.:format)" => "pages#show", as: "preview_page"

    resources :nodes, only: [:index] do
      member do
        patch :move
        patch :toggle_folded
      end
    end
  end
end
