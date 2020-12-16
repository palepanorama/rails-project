class PlayersController < ApplicationController
    before_action :authenticate_user!

    def index
        if params[:position_id]
            @players = current_user.players.where(position_id: params[:position_id])
            @position = current_user.positions.find_by(id: params[:position_id])
        elsif params[:search]
            @players = Player.search(params[:search])
        else 
            @players = current_user.players 
        end 
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
        @player = current_user.players.find_by(id: params[:id])
        @player.update(
            position_id: player_params[:position_id], 
            name: player_params[:name]
        )
    
        if @player
            redirect_to player_path
        else 
            render :edit
        end 
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
        params.require(:player).permit(:name, :search, :position, :position_id, :user_id, :has_team, position_attributes: [:name])
    end 

end