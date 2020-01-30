class MeasuresController < ApplicationController
  before_action :set_measure, only: [:show, :edit, :update, :destroy]

  # GET /measures
  # GET /measures.json
  def index
    @search = Measure.search(params[:q])
    @measures = @search.result.paginate(page: params[:page], per_page: 100)
    if params[:q] != nil
      @search_term = params[:q].values[0].to_s
    end
  end

  def index_pages
    @measures = Measure
  end

  def index_simple_pages
    @measures = Measure

    @q = Measure.ransack(params[:q])
    @measures_q = @q.result(distinct: true)
  end

  def index_master
    @measures = Measure.all
  end

  # GET /measures/1
  # GET /measures/1.json
  def show
  end

  # GET /measures/new
  def new
    @measure = Measure.new
  end

  # GET /measures/1/edit
  def edit
  end

  # POST /measures
  # POST /measures.json
  def create
    @measure = Measure.new(measure_params)

    respond_to do |format|
      if @measure.save
        format.html { redirect_to @measure, notice: 'Measure was successfully created.' }
        format.json { render :show, status: :created, location: @measure }
      else
        format.html { render :new }
        format.json { render json: @measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measures/1
  # PATCH/PUT /measures/1.json
  def update
    respond_to do |format|
      if @measure.update(measure_params)
        format.html { redirect_to @measure, notice: 'Measure was successfully updated.' }
        format.json { render :show, status: :ok, location: @measure }
      else
        format.html { render :edit }
        format.json { render json: @measure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measures/1
  # DELETE /measures/1.json
  def destroy
    @measure.destroy
    respond_to do |format|
      format.html { redirect_to measures_url, notice: 'Measure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measure
      @measure = Measure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measure_params
      params.require(:measure).permit(:agency, :city, :country_id, :country_region, :data_source_id, :description, :ghgs_affected, :impact_evaluation, :impact_on_eu_ets_esd_or_lulucf_emissions, :jurisdiction, :link, :name, :percent_private_funded, :measure_financing_period_start, :measure_financing_quantity, :measure_implementation_period_start_year, :measure_implementation_period_end_year, :measure_status, :measure_targets, :measure_type, :measure_written_year, :related_documents_text, :related_documents_url, :related_to_eu_policy, :related_to_eu_policy_boolean, :related_to_neeap_policy, :related_to_neeap_policy_boolean, :total_ghg_emissions_reductions_in_2020, :total_ghg_emissions_reductions_in_2030, :truth_uuid)
    end
end
