Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Always follow the rule: verb, url_path to: controller#action

root to: "pages#home"
get "about", to: "pages#about"
get "contact", to: "pages#contact"
get "ask", to: "questions#ask"
get "answer", to: "questions#answer"

# the verb is get because we are only showing info...the url path will be about
# and the pages routes will lead to the pages controller where the about method
# wil be definded


resources :restaurants
# for all CRUD actions of the restaurants, we can use this method,
# which automatically replaces all thosw steps we see above with
# the pages controller. All crud actions are linked torestaurants
# controller


end
