class QualityEduactionsController < ApplicationController
  before_action :set_quality_eduaction, only: [:show, :edit, :update, :destroy]

  # GET /quality_eduactions
  # GET /quality_eduactions.json
  def index
    @quality_eduactions = QualityEduaction.all
  end

  # GET /quality_eduactions/1
  # GET /quality_eduactions/1.json
  def show
  end

  # GET /quality_eduactions/new
  def new
    @quality_eduaction = QualityEduaction.new
  end

  # GET /quality_eduactions/1/edit
  def edit
  end

  # POST /quality_eduactions
  # POST /quality_eduactions.json
  def create
    @quality_eduaction = QualityEduaction.new(quality_eduaction_params)

    respond_to do |format|
      if @quality_eduaction.save
        format.html { redirect_to @quality_eduaction, notice: 'Quality eduaction was successfully created.' }
        format.json { render :show, status: :created, location: @quality_eduaction }
      else
        format.html { render :new }
        format.json { render json: @quality_eduaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quality_eduactions/1
  # PATCH/PUT /quality_eduactions/1.json
  def update
    respond_to do |format|
      if @quality_eduaction.update(quality_eduaction_params)
        format.html { redirect_to @quality_eduaction, notice: 'Quality eduaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @quality_eduaction }
      else
        format.html { render :edit }
        format.json { render json: @quality_eduaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quality_eduactions/1
  # DELETE /quality_eduactions/1.json
  def destroy
    @quality_eduaction.destroy
    respond_to do |format|
      format.html { redirect_to quality_eduactions_url, notice: 'Quality eduaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quality_eduaction
      @quality_eduaction = QualityEduaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quality_eduaction_params
      params.fetch(:quality_eduaction, {})
    end
end
