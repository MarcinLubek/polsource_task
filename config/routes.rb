Rails.application.routes.draw do
  get 'service/notupdated'
  get 'service/archive'
  get 'service/returnarchived'
  resources :notes
	root 'notes#index'
end
