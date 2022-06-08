
module Api
  module V1
    class UsersController < ApplicationController

      skip_before_action :verify_authenticity_token
    
      def show
            @user = User.find_by(user_id: params[:user_id])
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
      
        if @user.update(project_params)
              render json: @user, status: :ok
            else
              render json: @user.errors, status: :unprocessable_entity
            end
      end
      
      def create
          @user = User.new(project_params)
      
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
      def project_params
            params.require(:user).permit(:name, :team, :info)
      end
      end
      end
      end
      
      