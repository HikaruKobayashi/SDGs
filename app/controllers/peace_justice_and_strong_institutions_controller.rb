class PeaceJusticeAndStrongInstitutionsController < ApplicationController
  before_action :set_peace_justice_and_strong_institution, only: [:show, :edit, :update, :destroy]

  # GET /peace_justice_and_strong_institutions
  # GET /peace_justice_and_strong_institutions.json
  def index
    @peace_justice_and_strong_institutions = PeaceJusticeAndStrongInstitution.all
  end

  # GET /peace_justice_and_strong_institutions/1
  # GET /peace_justice_and_strong_institutions/1.json
  def show
  end

  # GET /peace_justice_and_strong_institutions/new
  def new
    @peace_justice_and_strong_institution = PeaceJusticeAndStrongInstitution.new
  end

  # GET /peace_justice_and_strong_institutions/1/edit
  def edit
  end

  # POST /peace_justice_and_strong_institutions
  # POST /peace_justice_and_strong_institutions.json
  def create
    @peace_justice_and_strong_institution = PeaceJusticeAndStrongInstitution.new(peace_justice_and_strong_institution_params)

    respond_to do |format|
      if @peace_justice_and_strong_institution.save
        format.html { redirect_to @peace_justice_and_strong_institution, notice: 'Peace justice and strong institution was successfully created.' }
        format.json { render :show, status: :created, location: @peace_justice_and_strong_institution }
      else
        format.html { render :new }
        format.json { render json: @peace_justice_and_strong_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peace_justice_and_strong_institutions/1
  # PATCH/PUT /peace_justice_and_strong_institutions/1.json
  def update
    respond_to do |format|
      if @peace_justice_and_strong_institution.update(peace_justice_and_strong_institution_params)
        format.html { redirect_to @peace_justice_and_strong_institution, notice: 'Peace justice and strong institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @peace_justice_and_strong_institution }
      else
        format.html { render :edit }
        format.json { render json: @peace_justice_and_strong_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peace_justice_and_strong_institutions/1
  # DELETE /peace_justice_and_strong_institutions/1.json
  def destroy
    @peace_justice_and_strong_institution.destroy
    respond_to do |format|
      format.html { redirect_to peace_justice_and_strong_institutions_url, notice: 'Peace justice and strong institution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peace_justice_and_strong_institution
      @peace_justice_and_strong_institution = PeaceJusticeAndStrongInstitution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peace_justice_and_strong_institution_params
      params.fetch(:peace_justice_and_strong_institution, {})
    end
end
