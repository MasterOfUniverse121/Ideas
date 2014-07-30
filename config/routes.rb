Rails.application.routes.draw do
  get '/ideas/:id' => 'ideas#show'
  get '/new_idea' => 'ideas#new'
  get '/create_idea' => 'ideas#create'
  get '/ideas/:id/edit' => 'ideas#edit'
  get '/update_idea/:id' => 'ideas#update'
  get '/ideas/:id/destroy' => 'ideas#destroy'
  get '/ideas' => 'ideas#index'
end
