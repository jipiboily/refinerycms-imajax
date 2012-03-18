Refinery::Core::Engine.routes.append do
  namespace :admin, :path => 'refinery' do
    post "images/ajax_create", :to => "images#ajax_create"
  end
end