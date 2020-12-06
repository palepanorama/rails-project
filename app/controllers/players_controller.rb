class PlayersController < ApplicationController

    def index
        @players = Player.all
    end 

    def show 
    end 

    def new
        @player = Player.new(position_id: params[:position_id])
    end 

    def create
    end 

    def selected
        @players = Player.selected 
    end

    private 

end
