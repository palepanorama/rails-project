class PlayersController < ApplicationController

    def index
    end 

    def show 
    end 

    def new
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
