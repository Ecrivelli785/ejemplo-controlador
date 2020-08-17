Rails.application.routes.draw do

  root to: 'orden_trabajos#index'
  resources :orden_trabajos

    get 'offset', to: 'orden_trabajos#offset', as: :offset
    get 'digital', to: 'orden_trabajos#digital', as: :digital

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
