class WalletCriptosController < ApplicationController
  before_action :set_wallet_cripto, only: %i[ show edit update destroy ]

  # GET /wallet_criptos or /wallet_criptos.json
  def index
    @wallet_criptos = WalletCripto.all
  end

  # GET /wallet_criptos/1 or /wallet_criptos/1.json
  def show
  end

  # GET /wallet_criptos/new
  def new
    @wallet_cripto = WalletCripto.new
  end

  # GET /wallet_criptos/1/edit
  def edit
  end

  # POST /wallet_criptos or /wallet_criptos.json
  def create
    @wallet_cripto = WalletCripto.new(wallet_cripto_params)

    respond_to do |format|
      if @wallet_cripto.save
        format.html { redirect_to screencripto_path, notice: "Wallet cripto was successfully created." }
        format.json { render :show, status: :created, location: @wallet_cripto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wallet_cripto.errors, status: :unprocessable_entity }
      end
    end

      # Moficiamos el valor saldo de la cuenta

      @cuenta = CuentaBanca.where(user_id: current_user.id ).first()
      @cuentaaux = CuentaBanca.where(user_id: current_user.id ).first() 
      @cuentaaux.attributes["saldo"];
      # Moficamos y sumamos o restamos el valor 
      @cuenta.update saldo:  (@cuentaaux.attributes["saldo"].to_f - @wallet_cripto.valor.to_f);;
  
  end

  # PATCH/PUT /wallet_criptos/1 or /wallet_criptos/1.json
  def update
    respond_to do |format|
      if @wallet_cripto.update(wallet_cripto_params)
        format.html { redirect_to wallet_cripto_url(@wallet_cripto), notice: "Wallet cripto was successfully updated." }
        format.json { render :show, status: :ok, location: @wallet_cripto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wallet_cripto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallet_criptos/1 or /wallet_criptos/1.json
  def destroy
    @wallet_cripto.destroy

    respond_to do |format|
      format.html { redirect_to wallet_criptos_url, notice: "Wallet cripto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet_cripto
      @wallet_cripto = WalletCripto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallet_cripto_params
      params.require(:wallet_cripto).permit(:nombre, :valor)
    end
end
