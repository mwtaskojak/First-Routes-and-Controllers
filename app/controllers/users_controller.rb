class UsersController < ApplicationController
    def index
    ##     render plain: "I'm in the index action!"
    if params[:query]
      users = User.where('username LIKE ?', "%#{params[:query]}%")
    else
      users = User.all
    end
    
    render json: User.all    
    end 

    def create
        # debugger
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
       if  user.save
        render json: user, status: :created
       else
        render json: user.errors.full_messages, status: :unprocessable_entity
       end 
    end

    def show
        render json: User.find(params[:id])
      end
    
      def update
        user = User.find(params[:id])
        if user.update_attributes(user_params)
          render json: user
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
      end

      private

      def user_params
        params.require(:user).permit(:username)
      end
   
end