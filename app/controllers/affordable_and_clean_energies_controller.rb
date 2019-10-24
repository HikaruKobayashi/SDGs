class AffordableAndCleanEnergiesController < ApplicationController
  before_action :set_affordable_and_clean_energy, only: [:show, :edit, :update, :destroy]

  # GET /affordable_and_clean_energies
  # GET /affordable_and_clean_energies.json
  def index
    @affordable_and_clean_energies = AffordableAndCleanEnergy.all
  end

  # GET /affordable_and_clean_energies/1
  # GET /affordable_and_clean_energies/1.json
  def show
  end

  # GET /affordable_and_clean_energies/new
  def new
    @affordable_and_clean_energy = AffordableAndCleanEnergy.new
  end

  # GET /affordable_and_clean_energies/1/edit
  def edit
  end

  # POST /affordable_and_clean_energies
  # POST /affordable_and_clean_energies.json
  def create
    @affordable_and_clean_energy = AffordableAndCleanEnergy.new(affordable_and_clean_energy_params)

    respond_to do |format|
      if @affordable_and_clean_energy.save
        format.html { redirect_to @affordable_and_clean_energy, notice: 'Affordable and clean energy was successfully created.' }
        format.json { render :show, status: :created, location: @affordable_and_clean_energy }
      else
        format.html { render :new }
        format.json { render json: @affordable_and_clean_energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affordable_and_clean_energies/1
  # PATCH/PUT /affordable_and_clean_energies/1.json
  def update
    respond_to do |format|
      if @affordable_and_clean_energy.update(affordable_and_clean_energy_params)
        format.html { redirect_to @affordable_and_clean_energy, notice: 'Affordable and clean energy was successfully updated.' }
        format.json { render :show, status: :ok, location: @affordable_and_clean_energy }
      else
        format.html { render :edit }
        format.json { render json: @affordable_and_clean_energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affordable_and_clean_energies/1
  # DELETE /affordable_and_clean_energies/1.json
  def destroy
    @affordable_and_clean_energy.destroy
    respond_to do |format|
      format.html { redirect_to affordable_and_clean_energies_url, notice: 'Affordable and clean energy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affordable_and_clean_energy
      @affordable_and_clean_energy = AffordableAndCleanEnergy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affordable_and_clean_energy_params
      params.fetch(:affordable_and_clean_energy, {})
    end
end
