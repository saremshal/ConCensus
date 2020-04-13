# frozen_string_literal: true

# This file tells the Rails server how incoming requests are sent to which
# controller and method.
#
#
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The root page, e.g. www.example.com/, is sent here
  # root 'controller#method_in_controller'
  root 'home#index'
  # Devise authentification pages. This controlls the user login
  # and authentification system.
  devise_for :users

  # Examples:
  #
  # # Add app CRUD operations from a controller. Used with scaffolding.
  # # CRUD -> create (API/POST), new (page/GET), index, show,
  #           edit(page/GET), update(API/PATCH|PUT), destroy(API/DELETE)
  # resources :my_controller
  #
  # # Add GET path for photos controller, index method
  # get 'photos/index'
  
  get 'home/chart_js', to: 'home#chart_js', as: 'chart_js'
  get 'home/chart_js2', to: 'home#chart_js2', as: 'chart_js2'
  get 'home/echarts', to: 'home#echarts', as: 'echarts'
  get 'home/moris_js', to: 'home#moris_js', as: 'moris_js'
  get 'home/other_charts', to: 'home#other_charts', as: 'other_charts'

  # # Resources, but only register these methods
  # resources :photos, only: [:index, :new, :create, :destroy]
  #
  # # Add PUT path for the given url, but send it to a different controller
  # # than rails would assume by the name. to: 'controller#method_name'.
  # # It would have extected to: 'add_tags#add', which would fail
  # put '/add_tags/add', to: 'users#add_tags'
end
