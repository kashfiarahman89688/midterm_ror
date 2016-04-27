class OlumpicmedalsController < ApplicationController
  before_action :set_olumpicmedal, only: [:show, :edit, :update, :destroy]

  # GET /olumpicmedals
  # GET /olumpicmedals.json
  def index
    @olumpicmedals = Olumpicmedal.all
  end

  # GET /olumpicmedals/1
  # GET /olumpicmedals/1.json
  def show
  end

  # GET /olumpicmedals/new
  def new
    @olumpicmedal = Olumpicmedal.new
  end

  # GET /olumpicmedals/1/edit
  def edit
  end

  # POST /olumpicmedals
  # POST /olumpicmedals.json
  def create
    @olumpicmedal = Olumpicmedal.new(olumpicmedal_params)

    respond_to do |format|
      if @olumpicmedal.save
        format.html { redirect_to @olumpicmedal, notice: 'Olumpicmedal was successfully created.' }
        format.json { render :show, status: :created, location: @olumpicmedal }
      else
        format.html { render :new }
        format.json { render json: @olumpicmedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /olumpicmedals/1
  # PATCH/PUT /olumpicmedals/1.json
  def update
    respond_to do |format|
      if @olumpicmedal.update(olumpicmedal_params)
        format.html { redirect_to @olumpicmedal, notice: 'Olumpicmedal was successfully updated.' }
        format.json { render :show, status: :ok, location: @olumpicmedal }
      else
        format.html { render :edit }
        format.json { render json: @olumpicmedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /olumpicmedals/1
  # DELETE /olumpicmedals/1.json
  def destroy
    @olumpicmedal.destroy
    respond_to do |format|
      format.html { redirect_to olumpicmedals_url, notice: 'Olumpicmedal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_olumpicmedal
      @olumpicmedal = Olumpicmedal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def olumpicmedal_params
      params.require(:olumpicmedal).permit(:athlete_name, :event, :country, :medal_type, :event_date)
    end
end
