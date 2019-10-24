class GenderEqualitiesController < ApplicationController
  before_action :set_gender_equality, only: [:show, :edit, :update, :destroy]

  # GET /gender_equalities
  # GET /gender_equalities.json
  def index
    @gender_equalities = GenderEquality.all
  end

  # GET /gender_equalities/1
  # GET /gender_equalities/1.json
  def show
  end

  # GET /gender_equalities/new
  def new
    @gender_equality = GenderEquality.new
  end

  # GET /gender_equalities/1/edit
  def edit
  end

  # POST /gender_equalities
  # POST /gender_equalities.json
  def create
    @gender_equality = GenderEquality.new(gender_equality_params)

    respond_to do |format|
      if @gender_equality.save
        format.html { redirect_to @gender_equality, notice: 'Gender equality was successfully created.' }
        format.json { render :show, status: :created, location: @gender_equality }
      else
        format.html { render :new }
        format.json { render json: @gender_equality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gender_equalities/1
  # PATCH/PUT /gender_equalities/1.json
  def update
    respond_to do |format|
      if @gender_equality.update(gender_equality_params)
        format.html { redirect_to @gender_equality, notice: 'Gender equality was successfully updated.' }
        format.json { render :show, status: :ok, location: @gender_equality }
      else
        format.html { render :edit }
        format.json { render json: @gender_equality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gender_equalities/1
  # DELETE /gender_equalities/1.json
  def destroy
    @gender_equality.destroy
    respond_to do |format|
      format.html { redirect_to gender_equalities_url, notice: 'Gender equality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender_equality
      @gender_equality = GenderEquality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gender_equality_params
      params.fetch(:gender_equality, {})
    end
end
