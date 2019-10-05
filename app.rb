# app.rb
require 'sinatra/base'
require'./lib/player'
require './lib/game'

class Battle < Sinatra::Base
  # ... app code here ...

enable :sessions

before do
  @game = Game.instance
end


  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)

    redirect '/play'
  end


  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.invert(@game.current_turn))
    erb(:attack)
  end

  post '/swap_turns' do
    @game.swap_turns
    if @game.defeated?
      redirect '/gameover'
    else
      redirect '/play'
    end
  end

  get '/gameover' do
    erb(:gameover)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
