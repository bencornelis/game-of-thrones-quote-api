Rails.application.routes.draw do
  get "quotes/random", to: "quotes#random"
end
