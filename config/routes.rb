Rails.application.routes.draw do
  devise_for :chefs,:controllers => {registrations: 'registrations'}
  root 'welcome#home'

  get '/recipes', to: 'recipes#index', as: :recipes
  post '/recipes', to: 'recipes#create'
  get '/recipes/new' ,to: 'recipes#new', as: :new_recipe
  get '/recipes/:id', to: 'recipes#show', as: :recipe
  get '/recipes/:id/edit', to: 'recipes#edit', as: :edit_recipe
  patch '/recipes/:id', to: 'recipes#update'
end
