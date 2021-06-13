Rails.application.routes.draw do
  get 'cunstomers/show'
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#top'
  resources:customers,only:[:show,:edit,:update]
  resources:posts,only:[:index,:create,:show,:edit,:update,:destroy]
end
