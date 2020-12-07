class PlayersController < ApplicationController
    before_action :authenticate_user!

    def index
        @players = current_user.players 
    end 

    def new
        @player = Player.new(position_id: params[:position_id])
    end 

    def create
        @player = current_user.players.build(player_params)
       
        if @player.save
            redirect_to @player
        else
            render :new 
        end 
    end

    def show 
        @player = current_user.players.find_by(id: params[:id])
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
