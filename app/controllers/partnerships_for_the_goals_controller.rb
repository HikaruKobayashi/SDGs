class PartnershipsForTheGoalsController < ApplicationController
  before_action :set_partnerships_for_the_goal, only: [:show, :edit, :update, :destroy]

  # GET /partnerships_for_the_goals
  # GET /partnerships_for_the_goals.json
  def index
    @partnerships_for_the_goals = PartnershipsForTheGoal.all
  end

  # GET /partnerships_for_the_goals/1
  # GET /partnerships_for_the_goals/1.json
  def show
  end

  # GET /partnerships_for_the_goals/new
  def new
    @partnerships_for_the_goal = PartnershipsForTheGoal.new
  end

  # GET /partnerships_for_the_goals/1/edit
  def edit
  end

  # POST /partnerships_for_the_goals
  # POST /partnerships_for_the_goals.json
  def create
    @partnerships_for_the_goal = PartnershipsForTheGoal.new(partnerships_for_the_goal_params)

    respond_to do |format|
      if @partnerships_for_the_goal.save
        format.html { redirect_to @partnerships_for_the_goal, notice: 'Partnerships for the goal was successfully created.' }
        format.json { render :show, status: :created, location: @partnerships_for_the_goal }
      else
        format.html { render :new }
        format.json { render json: @partnerships_for_the_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partnerships_for_the_goals/1
  # PATCH/PUT /partnerships_for_the_goals/1.json
  def update
    respond_to do |format|
      if @partnerships_for_the_goal.update(partnerships_for_the_goal_params)
        format.html { redirect_to @partnerships_for_the_goal, notice: 'Partnerships for the goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @partnerships_for_the_goal }
      else
        format.html { render :edit }
        format.json { render json: @partnerships_for_the_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partnerships_for_the_goals/1
  # DELETE /partnerships_for_the_goals/1.json
  def destroy
    @partnerships_for_the_goal.destroy
    respond_to do |format|
      format.html { redirect_to partnerships_for_the_goals_url, notice: 'Partnerships for the goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partnerships_for_the_goal
      @partnerships_for_the_goal = PartnershipsForTheGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partnerships_for_the_goal_params
      params.fetch(:partnerships_for_the_goal, {})
    end
end
