class PositionsController < ApplicationController
    # def index
    #     @positions = current_user.positions.uniq   
    # end 

    # def show 
    #     @position = current_user.positions.uniq.find_by(id: params[:id])
    #     render :show 
    # end 

    # def new
    #     @position = Position.new 
    # end 

    # def edit 
    #     @position = Position.find_by(id: params[:id])
    # end 

    # def create
    #     @position = current_user.positions.build(position_params)
    #     if @position.savve 
    #         redirect_to positions_path 
    #     else 
    #         render :new
    #     end 
    # end 

    # def update 

    # end 

    # private 

    # def position_params 
    #     params.require(:position).permit(:name)
    # end 

    def index
        @positions = Position.all
    end

    def new
        @position = Position.new
    end

    def create
        @position = Position.create(position_params)
        redirect_to position_path(@position)
    end

    def show
        @position = Position.find(params[:id])
    end

    def edit
        @position = Position.find(params[:id])
    end

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
    
end

# end
