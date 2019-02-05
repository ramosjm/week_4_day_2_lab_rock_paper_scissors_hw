require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/game/:hand_1/:hand_2' do
  @hand_1 = params[:hand_1]
  @hand_2 = params[:hand_2]
  game_result = Game.new(params[:hand_1],params[:hand_2])
  @game_result = game_result.check_hands()
  erb(:result)
end

get '/game/rules' do
  erb(:rules)
end

get '/game/about_us' do
  erb(:about_us)
end
