
module Api
    module V1
      class UsersController < ApplicationController
  
        skip_before_action :verify_authenticity_token
      
        def show
              @user = User.find_by(id: params[:id])
              if (@user!=nil)
                render json: @user, status: :ok
          else
               render json: :nothing, status: :not_found
            end
        end
        
        def index
                render json: User.all, status: :ok
        end
        
        def update
         @user = User.find(params[:id])
        
          if @user.update(user_params)
                render json: @user, status: :ok
              else
                render json: @user.errors, status: :unprocessable_entity
              end
        end
        
        def create
            @user = User.new(user_params)
        
              if @user.save
                render json: @user, status: :created
              else
                render json: @user.errors, status: :unprocessable_entity
              end
        end
        
        def destroy
            @user = User.find(params[:id])
            if @user.destroy
              render json: :nothing, status: :ok
            else
              render json: :nothing, status: :unprocessable_entity
            end
        end
        private
        def user_params
              params.require(:user).permit(  :email, :encrypted_password, :nombre, :apellidos, :dni, :telefono, :contrasena)
        end
        end
        end
        end
        
        