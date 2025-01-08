Rails.application.routes.draw do
  # Definindo as rotas para as Lists e Items
  resources :lists do
    resources :items, only: [:create, :update, :destroy]
  end
  
  # Definindo a rota raiz da aplicação (opcional)
  root 'lists#index'
end
