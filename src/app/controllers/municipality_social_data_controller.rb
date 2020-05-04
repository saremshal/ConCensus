class MunicipalitySocialDataController < ApplicationController
  before_action :set_municipality_social_datum, only: [:show, :edit, :update, :destroy]

  # GET /municipality_social_data
  # GET /municipality_social_data.json
  def index
    @municipality_social_data = MunicipalitySocialDatum.all
  end

  # GET /municipality_social_data/1
  # GET /municipality_social_data/1.json
  def show
  end

  # GET /municipality_social_data/new
  def new
    @municipality_social_datum = MunicipalitySocialDatum.new
  end

  # GET /municipality_social_data/1/edit
  def edit
  end

  # POST /municipality_social_data
  # POST /municipality_social_data.json
  def create
    @municipality_social_datum = MunicipalitySocialDatum.new(municipality_social_datum_params)

    respond_to do |format|
      if @municipality_social_datum.save
        format.html { redirect_to @municipality_social_datum, notice: 'Municipality social datum was successfully created.' }
        format.json { render :show, status: :created, location: @municipality_social_datum }
      else
        format.html { render :new }
        format.json { render json: @municipality_social_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /municipality_social_data/1
  # PATCH/PUT /municipality_social_data/1.json
  def update
    respond_to do |format|
      if @municipality_social_datum.update(municipality_social_datum_params)
        format.html { redirect_to @municipality_social_datum, notice: 'Municipality social datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @municipality_social_datum }
      else
        format.html { render :edit }
        format.json { render json: @municipality_social_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /municipality_social_data/1
  # DELETE /municipality_social_data/1.json
  def destroy
    @municipality_social_datum.destroy
    respond_to do |format|
      format.html { redirect_to municipality_social_data_url, notice: 'Municipality social datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    MunicipalitySocialDatum.import(params[:file])
    redirect_to root_path, notice: "Social Data Imported!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municipality_social_datum
      @municipality_social_datum = MunicipalitySocialDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def municipality_social_datum_params
      params.require(:municipality_social_datum).permit(:name, :year, :households, :family_households, :percent_family_households, :married_male_above_15, :never_married_male_above_15, :percent_never_married_males_above_15, :married_females_above_15, :never_married_females_above_15, :percent_never_married_females_above_15, :total_15to50_gave_birth_past_year, :older_3_in_school, :older_3_in_highschool, :percent_older_3_in_highschool, :older_3_in_college_or_graduate, :percent_older_3_in_college_or_graduate, :total_25_and_older_highschool_grad, :percent_25_and_older_highschool_grad, :household_with_computer, :percent_household_with_computer)
    end
end
