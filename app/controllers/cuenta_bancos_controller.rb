class CuentaBancosController < ApplicationController
  before_action :set_cuenta_banco, only: %i[ show edit update destroy ]

  # GET /cuenta_bancos or /cuenta_bancos.json
  def index
    @cuenta_bancos = CuentaBanco.all
  end

  # GET /cuenta_bancos/1 or /cuenta_bancos/1.json
  def show
  end

  # GET /cuenta_bancos/new
  def new
    @cuenta_banco = CuentaBanco.new
  end

  # GET /cuenta_bancos/1/edit
  def edit
  end

  # POST /cuenta_bancos or /cuenta_bancos.json
  def create
    @cuenta_banco = CuentaBanco.new(cuenta_banco_params)

    respond_to do |format|
      if @cuenta_banco.save
        format.html { redirect_to cuenta_banco_url(@cuenta_banco), notice: "Cuenta banco was successfully created." }
        format.json { render :show, status: :created, location: @cuenta_banco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuenta_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta_bancos/1 or /cuenta_bancos/1.json
  def update
    respond_to do |format|
      if @cuenta_banco.update(cuenta_banco_params)
        format.html { redirect_to cuenta_banco_url(@cuenta_banco), notice: "Cuenta banco was successfully updated." }
        format.json { render :show, status: :ok, location: @cuenta_banco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuenta_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta_bancos/1 or /cuenta_bancos/1.json
  def destroy
    @cuenta_banco.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_bancos_url, notice: "Cuenta banco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_banco
      @cuenta_banco = CuentaBanco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuenta_banco_params
      params.require(:cuenta_banco).permit(:users_id, :numeroCuenta, :saldo, :tipo, :comision, :divisa)
    end
end
