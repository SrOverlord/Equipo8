class CuentaBancasController < ApplicationController
  before_action :set_cuenta_banca, only: %i[ show edit update destroy ]

  # GET /cuenta_bancas or /cuenta_bancas.json
  def index
    @cuenta_bancas = CuentaBanca.where(user_id:  params[:id])
  end

  # GET /cuenta_bancas/1 or /cuenta_bancas/1.json
  def show
  end

  # GET /cuenta_bancas/new
  def new
    @cuenta_banca = CuentaBanca.new
  end

  # GET /cuenta_bancas/1/edit
  def edit
  end

  # POST /cuenta_bancas or /cuenta_bancas.json
  def create
    @cuenta_banca = CuentaBanca.new(cuenta_banca_params)

    respond_to do |format|
      if @cuenta_banca.save
        format.html { redirect_to cuenta_banca_url(@cuenta_banca), notice: "Cuenta banca was successfully created." }
        format.json { render :show, status: :created, location: @cuenta_banca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuenta_banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta_bancas/1 or /cuenta_bancas/1.json
  def update
    respond_to do |format|
      if @cuenta_banca.update(cuenta_banca_params)
        format.html { redirect_to cuenta_banca_url(@cuenta_banca), notice: "Cuenta banca was successfully updated." }
        format.json { render :show, status: :ok, location: @cuenta_banca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuenta_banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta_bancas/1 or /cuenta_bancas/1.json
  def destroy
    @cuenta_banca.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_bancas_url, notice: "Cuenta banca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_banca
      @cuenta_banca = CuentaBanca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuenta_banca_params
      params.require(:cuenta_banca).permit(:user_id, :numeroCuenta, :saldo, :tipo, :comision, :divisa)
    end
end
