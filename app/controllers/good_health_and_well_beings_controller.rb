class GoodHealthAndWellBeingsController < ApplicationController
  before_action :set_good_health_and_well_being, only: [:show, :edit, :update, :destroy]

  # GET /good_health_and_well_beings
  # GET /good_health_and_well_beings.json
  def index
    @good_health_and_well_beings = GoodHealthAndWellBeing.all
  end

  # GET /good_health_and_well_beings/1
  # GET /good_health_and_well_beings/1.json
  def show
  end

  # GET /good_health_and_well_beings/new
  def new
    @good_health_and_well_being = GoodHealthAndWellBeing.new
  end

  # GET /good_health_and_well_beings/1/edit
  def edit
  end

  # POST /good_health_and_well_beings
  # POST /good_health_and_well_beings.json
  def create
    @good_health_and_well_being = GoodHealthAndWellBeing.new(good_health_and_well_being_params)

    respond_to do |format|
      if @good_health_and_well_being.save
        format.html { redirect_to @good_health_and_well_being, notice: 'Good health and well being was successfully created.' }
        format.json { render :show, status: :created, location: @good_health_and_well_being }
      else
        format.html { render :new }
        format.json { render json: @good_health_and_well_being.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_health_and_well_beings/1
  # PATCH/PUT /good_health_and_well_beings/1.json
  def update
    respond_to do |format|
      if @good_health_and_well_being.update(good_health_and_well_being_params)
        format.html { redirect_to @good_health_and_well_being, notice: 'Good health and well being was successfully updated.' }
        format.json { render :show, status: :ok, location: @good_health_and_well_being }
      else
        format.html { render :edit }
        format.json { render json: @good_health_and_well_being.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_health_and_well_beings/1
  # DELETE /good_health_and_well_beings/1.json
  def destroy
    @good_health_and_well_being.destroy
    respond_to do |format|
      format.html { redirect_to good_health_and_well_beings_url, notice: 'Good health and well being was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_health_and_well_being
      @good_health_and_well_being = GoodHealthAndWellBeing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_health_and_well_being_params
      params.fetch(:good_health_and_well_being, {})
    end
end
