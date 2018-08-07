# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        pages#home
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                  articles GET    /articles(.:format)                                                                      articles#index
#                           POST   /articles(.:format)                                                                      articles#create
#               new_article GET    /articles/new(.:format)                                                                  articles#new
#              edit_article GET    /articles/:id/edit(.:format)                                                             articles#edit
#                   article GET    /articles/:id(.:format)                                                                  articles#show
#                           PATCH  /articles/:id(.:format)                                                                  articles#update
#                           PUT    /articles/:id(.:format)                                                                  articles#update
#                           DELETE /articles/:id(.:format)                                                                  articles#destroy
#               collections GET    /collections(.:format)                                                                   collections#index
#                           POST   /collections(.:format)                                                                   collections#create
#            new_collection GET    /collections/new(.:format)                                                               collections#new
#           edit_collection GET    /collections/:id/edit(.:format)                                                          collections#edit
#                collection GET    /collections/:id(.:format)                                                               collections#show
#                           PATCH  /collections/:id(.:format)                                                               collections#update
#                           PUT    /collections/:id(.:format)                                                               collections#update
#                           DELETE /collections/:id(.:format)                                                               collections#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                 users_new GET    /users/new(.:format)                                                                     users#new
#                     login GET    /login(.:format)                                                                         session#new
#                           POST   /login(.:format)                                                                         session#create
#                           DELETE /login(.:format)                                                                         session#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root :to => 'articles#index'
  # get 'pages/home'
  # get 'pages/show'
  # get 'session/new'
  # get 'collections/edit'
  # get 'collections/entry'
  # get 'collections/index'
  # get 'collections/new'
  # get 'collections/show'
  # get 'articles/edit'
  # get 'articles/entry'
  # get 'articles/index'
  # get 'articles/new'
  # get 'articles/show'
  # get 'users/edit'
  # get 'users/entry'
  # get 'users/index'
  # get 'users/new'
  # get 'users/show'
  get '/users/edit' => 'users#edit', :as => :admin_page
  delete '/users/:id(.:format)' => 'users#destroy'
  resources :pages
  resources :articles
  resources :collections
  resources :users
  resources :session
  get 'users/new' => 'users#new'
  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # perform a login
  delete '/login' => 'session#destroy' # perform a log out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
