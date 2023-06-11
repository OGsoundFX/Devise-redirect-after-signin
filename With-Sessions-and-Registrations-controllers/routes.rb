# config/routes.rb

devise_for :users, controllers: {
  registrations: 'registrations',
  sessions: 'sessions'
}
