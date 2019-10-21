class ResponsibleConsumptionAndProductionsController < ApplicationController
  before_action :set_responsible_consumption_and_production, only: [:show, :edit, :update, :destroy]

  # GET /responsible_consumption_and_productions
  # GET /responsible_consumption_and_productions.json
  def index
    @responsible_consumption_and_productions = ResponsibleConsumptionAndProduction.all
  end

  # GET /responsible_consumption_and_productions/1
  # GET /responsible_consumption_and_productions/1.json
  def show
  end

  # GET /responsible_consumption_and_productions/new
  def new
    @responsible_consumption_and_production = ResponsibleConsumptionAndProduction.new
  end

  # GET /responsible_consumption_and_productions/1/edit
  def edit
  end

  # POST /responsible_consumption_and_productions
  # POST /responsible_consumption_and_productions.json
  def create
    @responsible_consumption_and_production = ResponsibleConsumptionAndProduction.new(responsible_consumption_and_production_params)

    respond_to do |format|
      if @responsible_consumption_and_production.save
        format.html { redirect_to @responsible_consumption_and_production, notice: 'Responsible consumption and production was successfully created.' }
        format.json { render :show, status: :created, location: @responsible_consumption_and_production }
      else
        format.html { render :new }
        format.json { render json: @responsible_consumption_and_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsible_consumption_and_productions/1
  # PATCH/PUT /responsible_consumption_and_productions/1.json
  def update
    respond_to do |format|
      if @responsible_consumption_and_production.update(responsible_consumption_and_production_params)
        format.html { redirect_to @responsible_consumption_and_production, notice: 'Responsible consumption and production was successfully updated.' }
        format.json { render :show, status: :ok, location: @responsible_consumption_and_production }
      else
        format.html { render :edit }
        format.json { render json: @responsible_consumption_and_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsible_consumption_and_productions/1
  # DELETE /responsible_consumption_and_productions/1.json
  def destroy
    @responsible_consumption_and_production.destroy
    respond_to do |format|
      format.html { redirect_to responsible_consumption_and_productions_url, notice: 'Responsible consumption and production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsible_consumption_and_production
      @responsible_consumption_and_production = ResponsibleConsumptionAndProduction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def responsible_consumption_and_production_params
      params.fetch(:responsible_consumption_and_production, {})
    end
end
