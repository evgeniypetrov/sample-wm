Workmate.define_routes do
  get '/', to: 'pages#index', transport: [:http]

  get '/about', to: 'pages#index'
end
