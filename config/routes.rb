Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/list' => 'site#list'
  get '/contact' => 'site#contact'
  get '/projects' => 'projects#index'
  get '/projects/:id' => 'projects#show'
  get '/projects/:project_id/entries' => 'entries#index'
  get '/projects/:project_id/entries/:id' => 'entries#show'
end
