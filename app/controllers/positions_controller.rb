class PositionsController < ApplicationController
    def index
        @positions = current_user.positions  
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



    private 

end
