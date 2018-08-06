# == Route Map
#
#                    Prefix Verb URI Pattern                                                                              Controller#Action
#          collections_edit GET  /collections/edit(.:format)                                                              collections#edit
#         collections_entry GET  /collections/entry(.:format)                                                             collections#entry
#         collections_index GET  /collections/index(.:format)                                                             collections#index
#           collections_new GET  /collections/new(.:format)                                                               collections#new
#          collections_show GET  /collections/show(.:format)                                                              collections#show
#             articles_edit GET  /articles/edit(.:format)                                                                 articles#edit
#            articles_entry GET  /articles/entry(.:format)                                                                articles#entry
#            articles_index GET  /articles/index(.:format)                                                                articles#index
#              articles_new GET  /articles/new(.:format)                                                                  articles#new
#             articles_show GET  /articles/show(.:format)                                                                 articles#show
#                users_edit GET  /users/edit(.:format)                                                                    users#edit
#               users_entry GET  /users/entry(.:format)                                                                   users#entry
#               users_index GET  /users/index(.:format)                                                                   users#index
#                 users_new GET  /users/new(.:format)                                                                     users#new
#                users_show GET  /users/show(.:format)                                                                    users#show
#        rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  get 'collections/edit'
  get 'collections/entry'
  get 'collections/index'
  get 'collections/new'
  get 'collections/show'
  get 'articles/edit'
  get 'articles/entry'
  get 'articles/index'
  get 'articles/new'
  get 'articles/show'
  get 'users/edit'
  get 'users/entry'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
