class SustainableCitiesAndCommunitiesController < ApplicationController
  before_action :set_sustainable_cities_and_community, only: [:show, :edit, :update, :destroy]

  # GET /sustainable_cities_and_communities
  # GET /sustainable_cities_and_communities.json
  def index
    @sustainable_cities_and_communities = SustainableCitiesAndCommunity.all
  end

  # GET /sustainable_cities_and_communities/1
  # GET /sustainable_cities_and_communities/1.json
  def show
  end

  # GET /sustainable_cities_and_communities/new
  def new
    @sustainable_cities_and_community = SustainableCitiesAndCommunity.new
  end

  # GET /sustainable_cities_and_communities/1/edit
  def edit
  end

  # POST /sustainable_cities_and_communities
  # POST /sustainable_cities_and_communities.json
  def create
    @sustainable_cities_and_community = SustainableCitiesAndCommunity.new(sustainable_cities_and_community_params)

    respond_to do |format|
      if @sustainable_cities_and_community.save
        format.html { redirect_to @sustainable_cities_and_community, notice: 'Sustainable cities and community was successfully created.' }
        format.json { render :show, status: :created, location: @sustainable_cities_and_community }
      else
        format.html { render :new }
        format.json { render json: @sustainable_cities_and_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sustainable_cities_and_communities/1
  # PATCH/PUT /sustainable_cities_and_communities/1.json
  def update
    respond_to do |format|
      if @sustainable_cities_and_community.update(sustainable_cities_and_community_params)
        format.html { redirect_to @sustainable_cities_and_community, notice: 'Sustainable cities and community was successfully updated.' }
        format.json { render :show, status: :ok, location: @sustainable_cities_and_community }
      else
        format.html { render :edit }
        format.json { render json: @sustainable_cities_and_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sustainable_cities_and_communities/1
  # DELETE /sustainable_cities_and_communities/1.json
  def destroy
    @sustainable_cities_and_community.destroy
    respond_to do |format|
      format.html { redirect_to sustainable_cities_and_communities_url, notice: 'Sustainable cities and community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sustainable_cities_and_community
      @sustainable_cities_and_community = SustainableCitiesAndCommunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sustainable_cities_and_community_params
      params.fetch(:sustainable_cities_and_community, {})
    end
end
