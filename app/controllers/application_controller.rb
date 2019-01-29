require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do

    erb :super_hero
  end

  post '/teams' do
    @teamname = params[:team][:name]
    @motto = params[:team][:motto]
    @heros = params[:team][:members]
    @hero_names = []
    @hero_powers = []
    @hero_bios = []

    @heros.each{|hero|
    @hero_names << hero[:name]
    @hero_powers << hero[:power]
    @hero_bios << hero[:bio]}
    erb :team
  end





end
