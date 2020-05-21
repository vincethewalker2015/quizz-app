Rails.application.routes.draw do
  devise_for :users,  controllers: { registrations: "registrations" }
  root 'home#index'
  
  resources :quizzes
  get '/quizzes/:id/leaderboard' => "quizzes#leaderboard"
  post '/quizzes/:id' => "quizzes#check_answer"

  get '/home/leaderboard' => "home#user_board"
end
