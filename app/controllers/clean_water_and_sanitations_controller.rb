class CleanWaterAndSanitationsController < ApplicationController
  before_action :set_clean_water_and_sanitation, only: [:show, :edit, :update, :destroy]

  # GET /clean_water_and_sanitations
  # GET /clean_water_and_sanitations.json
  def index
    @clean_water_and_sanitations = CleanWaterAndSanitation.all
  end

  # GET /clean_water_and_sanitations/1
  # GET /clean_water_and_sanitations/1.json
  def show
  end

  # GET /clean_water_and_sanitations/new
  def new
    @clean_water_and_sanitation = CleanWaterAndSanitation.new
  end

  # GET /clean_water_and_sanitations/1/edit
  def edit
  end

  # POST /clean_water_and_sanitations
  # POST /clean_water_and_sanitations.json
  def create
    @clean_water_and_sanitation = CleanWaterAndSanitation.new(clean_water_and_sanitation_params)

    respond_to do |format|
      if @clean_water_and_sanitation.save
        format.html { redirect_to @clean_water_and_sanitation, notice: 'Clean water and sanitation was successfully created.' }
        format.json { render :show, status: :created, location: @clean_water_and_sanitation }
      else
        format.html { render :new }
        format.json { render json: @clean_water_and_sanitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clean_water_and_sanitations/1
  # PATCH/PUT /clean_water_and_sanitations/1.json
  def update
    respond_to do |format|
      if @clean_water_and_sanitation.update(clean_water_and_sanitation_params)
        format.html { redirect_to @clean_water_and_sanitation, notice: 'Clean water and sanitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @clean_water_and_sanitation }
      else
        format.html { render :edit }
        format.json { render json: @clean_water_and_sanitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clean_water_and_sanitations/1
  # DELETE /clean_water_and_sanitations/1.json
  def destroy
    @clean_water_and_sanitation.destroy
    respond_to do |format|
      format.html { redirect_to clean_water_and_sanitations_url, notice: 'Clean water and sanitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clean_water_and_sanitation
      @clean_water_and_sanitation = CleanWaterAndSanitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clean_water_and_sanitation_params
      params.fetch(:clean_water_and_sanitation, {})
    end
end
