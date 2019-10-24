class ClimateActionsController < ApplicationController
  before_action :set_climate_action, only: [:show, :edit, :update, :destroy]

  # GET /climate_actions
  # GET /climate_actions.json
  def index
    @climate_actions = ClimateAction.all
  end

  # GET /climate_actions/1
  # GET /climate_actions/1.json
  def show
  end

  # GET /climate_actions/new
  def new
    @climate_action = ClimateAction.new
  end

  # GET /climate_actions/1/edit
  def edit
  end

  # POST /climate_actions
  # POST /climate_actions.json
  def create
    @climate_action = ClimateAction.new(climate_action_params)

    respond_to do |format|
      if @climate_action.save
        format.html { redirect_to @climate_action, notice: 'Climate action was successfully created.' }
        format.json { render :show, status: :created, location: @climate_action }
      else
        format.html { render :new }
        format.json { render json: @climate_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /climate_actions/1
  # PATCH/PUT /climate_actions/1.json
  def update
    respond_to do |format|
      if @climate_action.update(climate_action_params)
        format.html { redirect_to @climate_action, notice: 'Climate action was successfully updated.' }
        format.json { render :show, status: :ok, location: @climate_action }
      else
        format.html { render :edit }
        format.json { render json: @climate_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /climate_actions/1
  # DELETE /climate_actions/1.json
  def destroy
    @climate_action.destroy
    respond_to do |format|
      format.html { redirect_to climate_actions_url, notice: 'Climate action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_climate_action
      @climate_action = ClimateAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def climate_action_params
      params.fetch(:climate_action, {})
    end
end
