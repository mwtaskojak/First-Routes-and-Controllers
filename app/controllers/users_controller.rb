class UsersController < ApplicationController
    def index
    #     render plain: "I'm in the index action!"
    render json: User.all    
    end 

    def create
        render json: params
    end

      def show 
        # render json: User.find(params[:id])
        render json: params
      end 
end