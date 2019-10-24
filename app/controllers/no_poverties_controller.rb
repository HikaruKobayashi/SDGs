class NoPovertiesController < ApplicationController
  before_action :set_no_poverty, only: [:show, :edit, :update, :destroy]

  # GET /no_poverties
  # GET /no_poverties.json
  def index
    @no_poverties = NoPoverty.all
  end

  # GET /no_poverties/1
  # GET /no_poverties/1.json
  def show
  end

  # GET /no_poverties/new
  def new
    @no_poverty = NoPoverty.new
  end

  # GET /no_poverties/1/edit
  def edit
  end

  # POST /no_poverties
  # POST /no_poverties.json
  def create
    @no_poverty = NoPoverty.new(no_poverty_params)

    respond_to do |format|
      if @no_poverty.save
        format.html { redirect_to @no_poverty, notice: 'No poverty was successfully created.' }
        format.json { render :show, status: :created, location: @no_poverty }
      else
        format.html { render :new }
        format.json { render json: @no_poverty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_poverties/1
  # PATCH/PUT /no_poverties/1.json
  def update
    respond_to do |format|
      if @no_poverty.update(no_poverty_params)
        format.html { redirect_to @no_poverty, notice: 'No poverty was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_poverty }
      else
        format.html { render :edit }
        format.json { render json: @no_poverty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_poverties/1
  # DELETE /no_poverties/1.json
  def destroy
    @no_poverty.destroy
    respond_to do |format|
      format.html { redirect_to no_poverties_url, notice: 'No poverty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_poverty
      @no_poverty = NoPoverty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_poverty_params
      params.fetch(:no_poverty, {})
    end
end
