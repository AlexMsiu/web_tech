class RatioOfVarietiesController < ApplicationController
  before_action :set_ratio_of_variety, only: [:show, :edit, :update, :destroy]

  # GET /ratio_of_varieties
  # GET /ratio_of_varieties.json
  def index
    @ratio_of_varieties = RatioOfVariety.all
  end

  # GET /ratio_of_varieties/1
  # GET /ratio_of_varieties/1.json
  def show
  end

  # GET /ratio_of_varieties/new
  def new
    @ratio_of_variety = RatioOfVariety.new
  end

  # GET /ratio_of_varieties/1/edit
  def edit
  end

  # POST /ratio_of_varieties
  # POST /ratio_of_varieties.json
  def create
    @ratio_of_variety = RatioOfVariety.new(ratio_of_variety_params)

    respond_to do |format|
      if @ratio_of_variety.save
        format.html { redirect_to @ratio_of_variety, notice: 'Ratio of variety was successfully created.' }
        format.json { render :show, status: :created, location: @ratio_of_variety }
      else
        format.html { render :new }
        format.json { render json: @ratio_of_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ratio_of_varieties/1
  # PATCH/PUT /ratio_of_varieties/1.json
  def update
    respond_to do |format|
      if @ratio_of_variety.update(ratio_of_variety_params)
        format.html { redirect_to @ratio_of_variety, notice: 'Ratio of variety was successfully updated.' }
        format.json { render :show, status: :ok, location: @ratio_of_variety }
      else
        format.html { render :edit }
        format.json { render json: @ratio_of_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ratio_of_varieties/1
  # DELETE /ratio_of_varieties/1.json
  def destroy
    @ratio_of_variety.destroy
    respond_to do |format|
      format.html { redirect_to ratio_of_varieties_url, notice: 'Ratio of variety was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ratio_of_variety
      @ratio_of_variety = RatioOfVariety.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ratio_of_variety_params
      params.require(:ratio_of_variety).permit(:ratio, :grape_sort_id, :wine_sort_id)
    end
end
