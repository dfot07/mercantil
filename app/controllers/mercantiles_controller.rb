class MercantilesController < ApplicationController
  before_action :set_mercantile, only: [:show, :edit, :update, :destroy]
  before_action :set_sequence
  before_action :authenticate_user!, except: [:index, :show]

  # GET /mercantiles
  # GET /mercantiles.json
  def index
    @mercantiles = Mercantile.all
  end

  # GET /mercantiles/1
  # GET /mercantiles/1.json
  def show
  end

  # GET /mercantiles/new
  def new
    @mercantile = Mercantile.new
  end

  # GET /mercantiles/1/edit
  def edit
  end

  # POST /mercantiles
  # POST /mercantiles.json
  def create
    @mercantile = current_user.mercantile.new(mercantile_params)
    @mercantile.secuencia = @sequence.secuencia
    @mercantile.fecha = @sequence.fecha

    respond_to do |format|
      if @mercantile.save
        @sequence.update(secuencia: @mercantile.secuencia+1)
        format.html { redirect_to @mercantile, notice: 'Mercantile was successfully created.' }
        format.json { render :show, status: :created, location: @mercantile }
      else
        format.html { render :new }
        format.json { render json: @mercantile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mercantiles/1
  # PATCH/PUT /mercantiles/1.json
  def update
    respond_to do |format|
      if @mercantile.update(mercantile_params)
        format.html { redirect_to @mercantile, notice: 'Mercantile was successfully updated.' }
        format.json { render :show, status: :ok, location: @mercantile }
      else
        format.html { render :edit }
        format.json { render json: @mercantile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercantiles/1
  # DELETE /mercantiles/1.json
  def destroy
    @mercantile.destroy
    respond_to do |format|
      format.html { redirect_to mercantiles_url, notice: 'Mercantile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mercantile
      @mercantile = Mercantile.find(params[:id])
    end

    def set_sequence
      @sequence = Sequence.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mercantile_params
      params.require(:mercantile).permit(:user_id, :acto, :observacion, :secuencia, :fecha)
    end
end
