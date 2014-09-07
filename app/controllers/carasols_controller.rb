class CarasolsController < ApplicationController
  before_action :set_carasol, only: [:show, :edit, :update, :destroy]

  # GET /carasols
  # GET /carasols.json
  def index
    @carasols = Carasol.all
  end

  # GET /carasols/1
  # GET /carasols/1.json
  def show
  end

  # GET /carasols/new
  def new
    @carasol = Carasol.new
  end

  # GET /carasols/1/edit
  def edit
  end

  # POST /carasols
  # POST /carasols.json
  def create
    @carasol = Carasol.new(carasol_params)

    if @carasol.save
      redirect_to @carasol, notice: 'Carasol was successfully created.'
    else
      render :new
    end
  end


  # PATCH/PUT /carasols/1
  # PATCH/PUT /carasols/1.json
  def update
    if @carasol.update(carasol_params)
      redirect_to @carasol, notice: 'Carasol was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /carasols/1
  # DELETE /carasols/1.json
  def destroy
    @carasol.destroy
    redirect_to carasols_url, notice: 'Carasol was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carasol
      @carasol = Carasol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carasol_params
      params.require(:carasol).permit(:name, :image)
    end
end
