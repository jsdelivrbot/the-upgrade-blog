class UpgradeStepsController < ApplicationController
  before_action :set_upgrade_step, only: [:show, :edit, :update, :destroy]

  # GET /upgrade_steps
  # GET /upgrade_steps.json
  def index
    @upgrade_steps = UpgradeStep.all
  end

  # GET /upgrade_steps/1
  # GET /upgrade_steps/1.json
  def show
  end

  # GET /upgrade_steps/new
  def new
    @upgrade_step = UpgradeStep.new
  end

  # GET /upgrade_steps/1/edit
  def edit
  end

  # POST /upgrade_steps
  # POST /upgrade_steps.json
  def create
    @upgrade_step = UpgradeStep.new(upgrade_step_params)

    respond_to do |format|
      if @upgrade_step.save
        format.html { redirect_to @upgrade_step, notice: 'Upgrade step was successfully created.' }
        format.json { render :show, status: :created, location: @upgrade_step }
      else
        format.html { render :new }
        format.json { render json: @upgrade_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upgrade_steps/1
  # PATCH/PUT /upgrade_steps/1.json
  def update
    respond_to do |format|
      if @upgrade_step.update(upgrade_step_params)
        format.html { redirect_to @upgrade_step, notice: 'Upgrade step was successfully updated.' }
        format.json { render :show, status: :ok, location: @upgrade_step }
      else
        format.html { render :edit }
        format.json { render json: @upgrade_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upgrade_steps/1
  # DELETE /upgrade_steps/1.json
  def destroy
    @upgrade_step.destroy
    respond_to do |format|
      format.html { redirect_to upgrade_steps_url, notice: 'Upgrade step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upgrade_step
      @upgrade_step = UpgradeStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upgrade_step_params
      params.fetch(:upgrade_step, {})
    end
end
