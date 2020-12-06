class PlayersController < ApplicationController

    def index
        @players = current_user.players 
    end 

    def show 
    end 

    def new
        @player = Player.new(position_id: params[:position_id])
    end 

    def edit
    end 

    def create
    end 

    def update
    end

    def destroy
    end 

    def selected
        @players = Player.selected 
    end

    private 

end
