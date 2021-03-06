Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  namespace 'customers' do
    resources :homes
  end

  root 'customers/homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
