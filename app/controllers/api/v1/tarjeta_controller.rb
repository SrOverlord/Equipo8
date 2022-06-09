module Api
  module V1
class TarjetaController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    # Modificado el show para mostrar con el usuario gracias a ID
    # Ahora hace la consulta por medio de Id de la tarjeta con IdUsuario = Id
    @tarjetum = Tarjetum.where(idUsuario: params[:id])
    if (@tarjetum!=nil)
      render json: @tarjetum, status: :ok
else
     render json: :nothing, status: :not_found
  end
end

def index
      render json: Tarjetum.all, status: :ok
end

def update
@tarjetum = Tarjetum.find(params[:id])

if @tarjetum.update(tarjetum_params)
      render json: @tarjetum, status: :ok
    else
      render json: @tarjetum.errors, status: :unprocessable_entity
    end
end

def create
  @tarjetum = Tarjetum.new(tarjetum_params)

    if @tarjetum.save
      render json: @tarjetum, status: :created
    else
      render json: @tarjetum.errors, status: :unprocessable_entity
    end
end

def destroy
  @tarjetum = Tarjetum.find(params[:id])
  if @tarjetum.destroy
    render json: :nothing, status: :ok
  else
    render json: :nothing, status: :unprocessable_entity
  end
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarjetum
      @tarjetum = Tarjetum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarjetum_params
      params.require(:tarjetum).permit(:titular, :numero, :cvc, :fechacaducidad, :idCuenta, :idUsuario)
    end
  end
  end
  end
  
