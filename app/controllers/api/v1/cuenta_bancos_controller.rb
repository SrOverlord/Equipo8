module Api
  module V1
class  CuentaBancosController < ApplicationController
  skip_before_action :verify_authenticity_token
    
  def show
        @cuenta_bancos = CuentaBanco.where("where user_id = "+ params[:id])
        if (@cuenta_bancos!=nil)
          render json: @cuenta_bancos, status: :ok
    else
         render json: :nothing, status: :not_found
      end
  end
  
  def index
          render json: CuentaBanco.all, status: :ok
  end
  
  def update
   @cuenta_bancos = CuentaBanco.find(params[:id])
  
    if @cuenta_bancos.update(project_params)
          render json: @cuenta_bancos, status: :ok
        else
          render json: @cuenta_bancos.errors, status: :unprocessable_entity
        end
  end
  
  def create
      @cuenta_bancos = CuentaBanco.new(project_params)
  
        if @cuenta_bancos.save
          render json: @cuenta_bancos, status: :created
        else
          render json: @cuenta_bancos.errors, status: :unprocessable_entity
        end
  end
  
  def destroy
      @cuenta_bancos = CuentaBanco.find(params[:id])
      if @cuenta_bancos.destroy
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
  
  