Rails.application.routes.draw   do
    resources :entries
    root to: "welcome#index"
end
