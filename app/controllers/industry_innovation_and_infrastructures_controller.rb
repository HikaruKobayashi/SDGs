class IndustryInnovationAndInfrastructuresController < ApplicationController
  before_action :set_industry_innovation_and_infrastructure, only: [:show, :edit, :update, :destroy]

  # GET /industry_innovation_and_infrastructures
  # GET /industry_innovation_and_infrastructures.json
  def index
    @industry_innovation_and_infrastructures = IndustryInnovationAndInfrastructure.all
  end

  # GET /industry_innovation_and_infrastructures/1
  # GET /industry_innovation_and_infrastructures/1.json
  def show
  end

  # GET /industry_innovation_and_infrastructures/new
  def new
    @industry_innovation_and_infrastructure = IndustryInnovationAndInfrastructure.new
  end

  # GET /industry_innovation_and_infrastructures/1/edit
  def edit
  end

  # POST /industry_innovation_and_infrastructures
  # POST /industry_innovation_and_infrastructures.json
  def create
    @industry_innovation_and_infrastructure = IndustryInnovationAndInfrastructure.new(industry_innovation_and_infrastructure_params)

    respond_to do |format|
      if @industry_innovation_and_infrastructure.save
        format.html { redirect_to @industry_innovation_and_infrastructure, notice: 'Industry innovation and infrastructure was successfully created.' }
        format.json { render :show, status: :created, location: @industry_innovation_and_infrastructure }
      else
        format.html { render :new }
        format.json { render json: @industry_innovation_and_infrastructure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industry_innovation_and_infrastructures/1
  # PATCH/PUT /industry_innovation_and_infrastructures/1.json
  def update
    respond_to do |format|
      if @industry_innovation_and_infrastructure.update(industry_innovation_and_infrastructure_params)
        format.html { redirect_to @industry_innovation_and_infrastructure, notice: 'Industry innovation and infrastructure was successfully updated.' }
        format.json { render :show, status: :ok, location: @industry_innovation_and_infrastructure }
      else
        format.html { render :edit }
        format.json { render json: @industry_innovation_and_infrastructure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_innovation_and_infrastructures/1
  # DELETE /industry_innovation_and_infrastructures/1.json
  def destroy
    @industry_innovation_and_infrastructure.destroy
    respond_to do |format|
      format.html { redirect_to industry_innovation_and_infrastructures_url, notice: 'Industry innovation and infrastructure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industry_innovation_and_infrastructure
      @industry_innovation_and_infrastructure = IndustryInnovationAndInfrastructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industry_innovation_and_infrastructure_params
      params.fetch(:industry_innovation_and_infrastructure, {})
    end
end
