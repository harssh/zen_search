# frozen_string_literal: true

# == Route Map
#
#                    Prefix Verb URI Pattern                                                                              Controller#Action
#                      root GET  /                                                                                        users#index
#                     users GET  /users(.:format)                                                                         users#index
#             organizations GET  /organizations(.:format)                                                                 organizations#index
#                   tickets GET  /tickets(.:format)                                                                       tickets#index
#                      page GET  /pages/*id                                                                               high_voltage/pages#show
#        rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, only: [:index]
  resources :organizations, only: [:index]
  resources :tickets, only: [:index]
end
