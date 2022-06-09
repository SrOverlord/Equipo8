
module Api
  module V1
    class CuentaBancasController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def show
        @cuenta_banca = CuentaBanca.where(user_id: params[:id])

        if (@cuenta_banca!=nil)
          render json: @cuenta_banca, status: :ok
    else
         render json: :nothing, status: :not_found
      end
  end

  def showID
    @cuenta_banca = CuentaBanca.where(user_id: params[:id], id: params[:user_id])


      if (@cuenta_banca!=nil)
        render json: @cuenta_banca, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

  def showSoloID
    @cuenta_banca = CuentaBanca.where( id: params[:id])

      if (@cuenta_banca!=nil)
        render json: @cuenta_banca, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end
  
  def index
          render json: CuentaBanca.where(user_id: current_user.id), status: :ok
  end
  
  def update
   @cuenta_banca = CuentaBanca.find(params[:id])
  
    if @cuenta_banca.update(cuenta_banca_params)
          render json: @cuenta_banca, status: :ok
        else
          render json: @cuenta_banca.errors, status: :unprocessable_entity
        end
  end
  
  def create
      @cuenta_banca = CuentaBanca.new(cuenta_banca_params)
  
        if @cuenta_banca.save
          render json: @cuenta_banca, status: :created
        else
          render json: @cuenta_banca.errors, status: :unprocessable_entity
        end
  end
  
  def destroy
      @cuenta_banca = CuentaBanca.find(params[:id])
      if @cuenta_banca.destroy
        render json: :nothing, status: :ok
      else
        render json: :nothing, status: :unprocessable_entity
      end
  end
  private
  def cuenta_banca_params
    params.require(:cuenta_banca).permit(:user_id, :numeroCuenta, :saldo, :tipo, :comision, :divisa)
  end
  end
  end
  end
  
  