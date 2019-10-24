class ZeroHungersController < ApplicationController
  before_action :set_zero_hunger, only: [:show, :edit, :update, :destroy]

  # GET /zero_hungers
  # GET /zero_hungers.json
  def index
    @zero_hungers = ZeroHunger.all
  end

  # GET /zero_hungers/1
  # GET /zero_hungers/1.json
  def show
  end

  # GET /zero_hungers/new
  def new
    @zero_hunger = ZeroHunger.new
  end

  # GET /zero_hungers/1/edit
  def edit
  end

  # POST /zero_hungers
  # POST /zero_hungers.json
  def create
    @zero_hunger = ZeroHunger.new(zero_hunger_params)

    respond_to do |format|
      if @zero_hunger.save
        format.html { redirect_to @zero_hunger, notice: 'Zero hunger was successfully created.' }
        format.json { render :show, status: :created, location: @zero_hunger }
      else
        format.html { render :new }
        format.json { render json: @zero_hunger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zero_hungers/1
  # PATCH/PUT /zero_hungers/1.json
  def update
    respond_to do |format|
      if @zero_hunger.update(zero_hunger_params)
        format.html { redirect_to @zero_hunger, notice: 'Zero hunger was successfully updated.' }
        format.json { render :show, status: :ok, location: @zero_hunger }
      else
        format.html { render :edit }
        format.json { render json: @zero_hunger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zero_hungers/1
  # DELETE /zero_hungers/1.json
  def destroy
    @zero_hunger.destroy
    respond_to do |format|
      format.html { redirect_to zero_hungers_url, notice: 'Zero hunger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zero_hunger
      @zero_hunger = ZeroHunger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zero_hunger_params
      params.fetch(:zero_hunger, {})
    end
end
