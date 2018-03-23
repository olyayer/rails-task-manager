Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"

  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create", as: "create"

  get "tasks/:id", to: "tasks#show", as: "show"

  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "tasks/:id", to: "tasks#update", as: "task"
  delete "tasks/:id", to: "tasks#destroy", as: "destroy"
  # resources :tasks
end


#  tasks GET    /tasks(.:format)          tasks#index
#           POST   /tasks(.:format)          tasks#create
#  new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#      task GET    /tasks/:id(.:format)      tasks#show
#           PATCH  /tasks/:id(.:format)      tasks#update
#           PUT    /tasks/:id(.:format)      tasks#update
#           DELETE /tasks/:id(.:format)      tasks#destroy
