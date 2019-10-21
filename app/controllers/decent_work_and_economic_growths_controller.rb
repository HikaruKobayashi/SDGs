class DecentWorkAndEconomicGrowthsController < ApplicationController
  before_action :set_decent_work_and_economic_growth, only: [:show, :edit, :update, :destroy]

  # GET /decent_work_and_economic_growths
  # GET /decent_work_and_economic_growths.json
  def index
    @decent_work_and_economic_growths = DecentWorkAndEconomicGrowth.all
  end

  # GET /decent_work_and_economic_growths/1
  # GET /decent_work_and_economic_growths/1.json
  def show
  end

  # GET /decent_work_and_economic_growths/new
  def new
    @decent_work_and_economic_growth = DecentWorkAndEconomicGrowth.new
  end

  # GET /decent_work_and_economic_growths/1/edit
  def edit
  end

  # POST /decent_work_and_economic_growths
  # POST /decent_work_and_economic_growths.json
  def create
    @decent_work_and_economic_growth = DecentWorkAndEconomicGrowth.new(decent_work_and_economic_growth_params)

    respond_to do |format|
      if @decent_work_and_economic_growth.save
        format.html { redirect_to @decent_work_and_economic_growth, notice: 'Decent work and economic growth was successfully created.' }
        format.json { render :show, status: :created, location: @decent_work_and_economic_growth }
      else
        format.html { render :new }
        format.json { render json: @decent_work_and_economic_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decent_work_and_economic_growths/1
  # PATCH/PUT /decent_work_and_economic_growths/1.json
  def update
    respond_to do |format|
      if @decent_work_and_economic_growth.update(decent_work_and_economic_growth_params)
        format.html { redirect_to @decent_work_and_economic_growth, notice: 'Decent work and economic growth was successfully updated.' }
        format.json { render :show, status: :ok, location: @decent_work_and_economic_growth }
      else
        format.html { render :edit }
        format.json { render json: @decent_work_and_economic_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decent_work_and_economic_growths/1
  # DELETE /decent_work_and_economic_growths/1.json
  def destroy
    @decent_work_and_economic_growth.destroy
    respond_to do |format|
      format.html { redirect_to decent_work_and_economic_growths_url, notice: 'Decent work and economic growth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decent_work_and_economic_growth
      @decent_work_and_economic_growth = DecentWorkAndEconomicGrowth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def decent_work_and_economic_growth_params
      params.fetch(:decent_work_and_economic_growth, {})
    end
end
