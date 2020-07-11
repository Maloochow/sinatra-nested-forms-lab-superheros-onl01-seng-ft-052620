require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end

    post "/teams" do
        @team = Team.new(params["team"])
        @heros = []
        params["hero"].each do |hero|
            newhero = Superhero.new(hero)
            newhero.team = @team
            @heros << newhero
        end
        erb :team
    end
end
