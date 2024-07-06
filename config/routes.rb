Rails.application.routes.draw do
  root to: redirect('/todos')
  namespace :api do
    namespace :v1 do
      delete '/todos/destroy_all', to: 'todo#destroy_all'
      resources :todos, only: %i[index show create update destroy]
    end
  end
end
