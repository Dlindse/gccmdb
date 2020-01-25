Rails.application.routes.draw do
  get 'scratch/back'
  get 'scratch/homepage'
  get 'scratch/one'

  root 'scratch#back'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
