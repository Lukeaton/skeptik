# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        pages#home
#              articles_add GET    /articles/add(.:format)                                                                  articles#add
#                admin_page GET    /users/edit(.:format)                                                                    users#edit
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                     pages GET    /pages(.:format)                                                                         pages#index
#                           POST   /pages(.:format)                                                                         pages#create
#                  new_page GET    /pages/new(.:format)                                                                     pages#new
#                 edit_page GET    /pages/:id/edit(.:format)                                                                pages#edit
#                      page GET    /pages/:id(.:format)                                                                     pages#show
#                           PATCH  /pages/:id(.:format)                                                                     pages#update
#                           PUT    /pages/:id(.:format)                                                                     pages#update
#                           DELETE /pages/:id(.:format)                                                                     pages#destroy
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
#             session_index GET    /session(.:format)                                                                       session#index
#                           POST   /session(.:format)                                                                       session#create
#               new_session GET    /session/new(.:format)                                                                   session#new
#              edit_session GET    /session/:id/edit(.:format)                                                              session#edit
#                   session GET    /session/:id(.:format)                                                                   session#show
#                           PATCH  /session/:id(.:format)                                                                   session#update
#                           PUT    /session/:id(.:format)                                                                   session#update
#                           DELETE /session/:id(.:format)                                                                   session#destroy
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
  root :to => 'pages#home'
  
  get "articles/:id/like" => "articles#like", as: :like_article
  get "articles/:id/unlike" => "articles#unlike", as: :unlike_article
  get 'articles/add' => 'articles#add'
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
