class LifeBelowWatersController < ApplicationController
  before_action :set_life_below_water, only: [:show, :edit, :update, :destroy]

  # GET /life_below_waters
  # GET /life_below_waters.json
  def index
    @life_below_waters = LifeBelowWater.all
  end

  # GET /life_below_waters/1
  # GET /life_below_waters/1.json
  def show
  end

  # GET /life_below_waters/new
  def new
    @life_below_water = LifeBelowWater.new
  end

  # GET /life_below_waters/1/edit
  def edit
  end

  # POST /life_below_waters
  # POST /life_below_waters.json
  def create
    @life_below_water = LifeBelowWater.new(life_below_water_params)

    respond_to do |format|
      if @life_below_water.save
        format.html { redirect_to @life_below_water, notice: 'Life below water was successfully created.' }
        format.json { render :show, status: :created, location: @life_below_water }
      else
        format.html { render :new }
        format.json { render json: @life_below_water.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_below_waters/1
  # PATCH/PUT /life_below_waters/1.json
  def update
    respond_to do |format|
      if @life_below_water.update(life_below_water_params)
        format.html { redirect_to @life_below_water, notice: 'Life below water was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_below_water }
      else
        format.html { render :edit }
        format.json { render json: @life_below_water.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_below_waters/1
  # DELETE /life_below_waters/1.json
  def destroy
    @life_below_water.destroy
    respond_to do |format|
      format.html { redirect_to life_below_waters_url, notice: 'Life below water was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_below_water
      @life_below_water = LifeBelowWater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_below_water_params
      params.fetch(:life_below_water, {})
    end
end
