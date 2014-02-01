class DogersController < ApplicationController
  before_action :set_doger, only: [:show, :edit, :update, :destroy]

  # GET /dogers
  # GET /dogers.json
  def index
    @dogers = Doger.all
  end

  # GET /dogers/1
  # GET /dogers/1.json
  def show
  end

  # GET /dogers/new
  def new
    @doger = Doger.new
  end

  # GET /dogers/1/edit
  def edit
  end

  # POST /dogers
  # POST /dogers.json
  def create
    @doger = Doger.new(doger_params)

    respond_to do |format|
      if @doger.save
        format.html { redirect_to @doger, notice: 'Doger was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doger }
      else
        format.html { render action: 'new' }
        format.json { render json: @doger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogers/1
  # PATCH/PUT /dogers/1.json
  def update
    respond_to do |format|
      if @doger.update(doger_params)
        format.html { redirect_to @doger, notice: 'Doger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogers/1
  # DELETE /dogers/1.json
  def destroy
    @doger.destroy
    respond_to do |format|
      format.html { redirect_to dogers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doger
      @doger = Doger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doger_params
      params.require(:doger).permit(:name, :awesome, :wow_factor, :color)
    end
end
