class LifeOnLandsController < ApplicationController
  before_action :set_life_on_land, only: [:show, :edit, :update, :destroy]

  # GET /life_on_lands
  # GET /life_on_lands.json
  def index
    @life_on_lands = LifeOnLand.all
  end

  # GET /life_on_lands/1
  # GET /life_on_lands/1.json
  def show
  end

  # GET /life_on_lands/new
  def new
    @life_on_land = LifeOnLand.new
  end

  # GET /life_on_lands/1/edit
  def edit
  end

  # POST /life_on_lands
  # POST /life_on_lands.json
  def create
    @life_on_land = LifeOnLand.new(life_on_land_params)

    respond_to do |format|
      if @life_on_land.save
        format.html { redirect_to @life_on_land, notice: 'Life on land was successfully created.' }
        format.json { render :show, status: :created, location: @life_on_land }
      else
        format.html { render :new }
        format.json { render json: @life_on_land.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_on_lands/1
  # PATCH/PUT /life_on_lands/1.json
  def update
    respond_to do |format|
      if @life_on_land.update(life_on_land_params)
        format.html { redirect_to @life_on_land, notice: 'Life on land was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_on_land }
      else
        format.html { render :edit }
        format.json { render json: @life_on_land.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_on_lands/1
  # DELETE /life_on_lands/1.json
  def destroy
    @life_on_land.destroy
    respond_to do |format|
      format.html { redirect_to life_on_lands_url, notice: 'Life on land was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_on_land
      @life_on_land = LifeOnLand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_on_land_params
      params.fetch(:life_on_land, {})
    end
end
