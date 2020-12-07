class PlayersController < ApplicationController

    def index
        # @players = Player.all.selected 
        @players = current_user.players.selected 
    end 

    def new
        @player = Player.new(position_id: params[:position_id])
    end 

    def create
        @player = current_user.players.create(player_params)
        redirect_to player_path(@player)
    end 

    def show 
        @player = Player.find(params[:id])
    end 

    def edit 
        @player = Player.find_by(id: params[:id])
    end 

    def update 
        @player = Player.find_by(id: params[:id])
    end 

    def destroy 
        Player.find(params[:id]).destroy 
        redirect_to root_path 
    end 

    def selected
        @players = Player.selected 
    end

    private 

    def player_params
        params.require(:player).permit(:name, :position, :position_id, :user_id, :has_team, position_attributes: [:name])
    end 

end
