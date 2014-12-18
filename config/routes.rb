Rails.application.routes.draw do
  get 'tasks/new'

  get 'tasks/edit'

  root 'static_pages#home'
  get 'about' => 'static_pages#about'

  resources :projects do
    resources :tasks, except: [:show, :index]
  end
end
