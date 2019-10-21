class ReducedInequeatiesController < ApplicationController
  before_action :set_reduced_inequeaty, only: [:show, :edit, :update, :destroy]

  # GET /reduced_inequeaties
  # GET /reduced_inequeaties.json
  def index
    @reduced_inequeaties = ReducedInequeaty.all
  end

  # GET /reduced_inequeaties/1
  # GET /reduced_inequeaties/1.json
  def show
  end

  # GET /reduced_inequeaties/new
  def new
    @reduced_inequeaty = ReducedInequeaty.new
  end

  # GET /reduced_inequeaties/1/edit
  def edit
  end

  # POST /reduced_inequeaties
  # POST /reduced_inequeaties.json
  def create
    @reduced_inequeaty = ReducedInequeaty.new(reduced_inequeaty_params)

    respond_to do |format|
      if @reduced_inequeaty.save
        format.html { redirect_to @reduced_inequeaty, notice: 'Reduced inequeaty was successfully created.' }
        format.json { render :show, status: :created, location: @reduced_inequeaty }
      else
        format.html { render :new }
        format.json { render json: @reduced_inequeaty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reduced_inequeaties/1
  # PATCH/PUT /reduced_inequeaties/1.json
  def update
    respond_to do |format|
      if @reduced_inequeaty.update(reduced_inequeaty_params)
        format.html { redirect_to @reduced_inequeaty, notice: 'Reduced inequeaty was successfully updated.' }
        format.json { render :show, status: :ok, location: @reduced_inequeaty }
      else
        format.html { render :edit }
        format.json { render json: @reduced_inequeaty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reduced_inequeaties/1
  # DELETE /reduced_inequeaties/1.json
  def destroy
    @reduced_inequeaty.destroy
    respond_to do |format|
      format.html { redirect_to reduced_inequeaties_url, notice: 'Reduced inequeaty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reduced_inequeaty
      @reduced_inequeaty = ReducedInequeaty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reduced_inequeaty_params
      params.fetch(:reduced_inequeaty, {})
    end
end
