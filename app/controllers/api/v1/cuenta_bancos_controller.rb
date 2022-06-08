
module Api
  module V1
class CuentaBancosController < ApplicationController
  skip_before_action :verify_authenticity_token
    
      def show
            @cuenta_banco = CuentaBanco.where("user_id = " + params[:id])
            if (@cuenta_banco!=nil)
              render json: @cuenta_banco, status: :ok
          else
             render json: :nothing, status: :not_found
          end
      end
      
      def index
              render json: CuentaBanco.all, status: :ok
      end
      
      def update
       @cuenta_banco = CuentaBanco.find(params[:id])
      
        if @cuenta_banco.update(project_params)
              render json: @cuenta_banco, status: :ok
            else
              render json: @cuenta_banco.errors, status: :unprocessable_entity
            end
      end
      
      def create
          @cuenta_banco = CuentaBanco.new(project_params)
      
            if @cuenta_banco.save
              render json: @cuenta_banco, status: :created
            else
              render json: @cuenta_banco.errors, status: :unprocessable_entity
            end
      end
      
      def destroy
          @cuenta_banco = CuentaBanco.find(params[:id])
          if @cuenta_banco.destroy
            render json: :nothing, status: :ok
          else
            render json: :nothing, status: :unprocessable_entity
          end
      end
      private
      def project_params
        params.require(:cuenta_banco).permit(:user_id, :numeroCuenta, :saldo, :tipo, :comision, :divisa)
      end
      end
      end
      end
      
      