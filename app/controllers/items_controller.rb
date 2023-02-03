class ItemsController < ApplicationController

    def index 
        item = Item.all 
        render json: items, only: [:description, :name, :price], include: [user: {only: [:username, :city]}], status: :ok
    end

    def show 

    end

end
