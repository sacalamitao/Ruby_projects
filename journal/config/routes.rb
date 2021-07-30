Rails.application.routes.draw do
  resources :task_organizations
  root to: 'task_organizations#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
