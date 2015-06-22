Rails.application.routes.draw do
  
  root              'landing_pages#home'
  get 'help'    =>  'landing_pages#help'
  get 'about'   =>  'landing_pages#about'
  get 'contact' =>  'landing_pages#contact'

  get 'signup'	=>	'workshops#new'

  resources :workshops
end
