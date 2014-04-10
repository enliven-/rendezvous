class HeartedsController < ApplicationController
  before_action :set_hearted, only: [:show, :edit, :update, :destroy]

  # GET /hearteds
  # GET /hearteds.json
  def index
    @hearteds = Hearted.all
  end

  # GET /hearteds/1
  # GET /hearteds/1.json
  def show
  end

  # GET /hearteds/new
  def new
    @hearted = Hearted.new
  end

  # GET /hearteds/1/edit
  def edit
  end

  # POST /hearteds
  # POST /hearteds.json
  def create
    @hearted = Hearted.new(hearted_params)

    respond_to do |format|
      if @hearted.save
        format.html { redirect_to @hearted, notice: 'Hearted was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hearted }
      else
        format.html { render action: 'new' }
        format.json { render json: @hearted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hearteds/1
  # PATCH/PUT /hearteds/1.json
  def update
    respond_to do |format|
      if @hearted.update(hearted_params)
        format.html { redirect_to @hearted, notice: 'Hearted was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hearted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hearteds/1
  # DELETE /hearteds/1.json
  def destroy
    @hearted.destroy
    respond_to do |format|
      format.html { redirect_to hearteds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hearted
      @hearted = Hearted.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hearted_params
      params.require(:hearted).permit(:userx_id, :usery_id, :matched, :userx_heart_time, :usery_heart_time, :match_time, :notification_time)
    end
end
