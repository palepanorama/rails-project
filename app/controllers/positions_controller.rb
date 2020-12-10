class PositionsController < ApplicationController
    def index
        @positions = Position.all
    end

    def new
        @position = Position.new
    end

    def create
        @position = current_user.positions.build(position_params)
        if @position.save 
            redirect_to positions_path
        else 
            render :new 
        end 
    end

    def show
        @position = Position.find(params[:id])
    end

    # def edit
    #     @position = Position.find(params[:id])
    # end

    def update
        @position = Position.find(params[:id])
        if @position.update(position_params)
            redirect_to position_path(@position)
          else
            render :edit
        end
    end

    def destroy
        Position.find(params[:id]).destroy
        redirect_to root_path
    end

    private 

    def position_params 
        params.require(:position).permit(:name)
    end 
    
end

