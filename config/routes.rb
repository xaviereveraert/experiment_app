Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Always follow the rule: verb, url_path to: controller#action

root to: "pages#home"
get "about", to: "pages#about"
get "contact", to: "pages#contact"

# the verb is get because we are only showing info...the url path will be about
# and the pages routes will lead to the pages controller where the about method
# wil be definded

end
