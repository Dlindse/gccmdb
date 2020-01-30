class MeasureTargetsController < ApplicationController
  before_action :set_measure_target, only: [:show, :edit, :update, :destroy]

  # GET /measure_targets
  # GET /measure_targets.json
  def index
    @measure_targets = MeasureTarget.all
    @search = MeasureTarget.search(params[:q])
    @measure_targets = @search.result.paginate(page: params[:page], per_page: 100)
  end

  def index_master
    @measure_targets = MeasureTarget.all
  end

  # GET /measure_targets/1
  # GET /measure_targets/1.json
  def show
    @search = Measure.where('measure_targets && ARRAY[?]::varchar[]', @measure_target.id).search(params[:q])
    @target_measures = @search.result.paginate(page: params[:page], per_page: 100)
  end

  # GET /measure_targets/new
  def new
    @measure_target = MeasureTarget.new
  end

  # GET /measure_targets/1/edit
  def edit
  end

  # POST /measure_targets
  # POST /measure_targets.json
  def create
    @measure_target = MeasureTarget.new(measure_target_params)

    respond_to do |format|
      if @measure_target.save
        format.html { redirect_to @measure_target, notice: 'Measure target was successfully created.' }
        format.json { render :show, status: :created, location: @measure_target }
      else
        format.html { render :new }
        format.json { render json: @measure_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measure_targets/1
  # PATCH/PUT /measure_targets/1.json
  def update
    respond_to do |format|
      if @measure_target.update(measure_target_params)
        format.html { redirect_to @measure_target, notice: 'Measure target was successfully updated.' }
        format.json { render :show, status: :ok, location: @measure_target }
      else
        format.html { render :edit }
        format.json { render json: @measure_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measure_targets/1
  # DELETE /measure_targets/1.json
  def destroy
    @measure_target.destroy
    respond_to do |format|
      format.html { redirect_to measure_targets_url, notice: 'Measure target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measure_target
      @measure_target = MeasureTarget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measure_target_params
      params.require(:measure_target).permit(:target, :truth_uuid)
    end
end
