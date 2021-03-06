class WineSortsController < ApplicationController
  before_action :set_wine_sort, only: [:show, :edit, :update, :destroy]

  # GET /wine_sorts
  # GET /wine_sorts.json
  def index
    @wine_sorts = WineSort.all
  end

  # GET /wine_sorts/1
  # GET /wine_sorts/1.json
  def show
  end

  # GET /wine_sorts/new
  def new
    @wine_sort = WineSort.new
  end

  # GET /wine_sorts/1/edit
  def edit
  end

  # POST /wine_sorts
  # POST /wine_sorts.json
  def create
    @wine_sort = WineSort.new(wine_sort_params)

    respond_to do |format|
      if @wine_sort.save
        format.html { redirect_to @wine_sort, notice: 'Wine sort was successfully created.' }
        format.json { render :show, status: :created, location: @wine_sort }
      else
        format.html { render :new }
        format.json { render json: @wine_sort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wine_sorts/1
  # PATCH/PUT /wine_sorts/1.json
  def update
    respond_to do |format|
      if @wine_sort.update(wine_sort_params)
        format.html { redirect_to @wine_sort, notice: 'Wine sort was successfully updated.' }
        format.json { render :show, status: :ok, location: @wine_sort }
      else
        format.html { render :edit }
        format.json { render json: @wine_sort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_sorts/1
  # DELETE /wine_sorts/1.json
  def destroy
    @wine_sort.destroy
    respond_to do |format|
      format.html { redirect_to wine_sorts_url, notice: 'Wine sort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_sort
      @wine_sort = WineSort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wine_sort_params
      params.require(:wine_sort).permit(:name, :wine, :time_in_the_barrel, :time_in_the_bottel)
    end
end
