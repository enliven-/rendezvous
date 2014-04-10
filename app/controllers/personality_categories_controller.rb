class PersonalityCategoriesController < ApplicationController
  before_action :set_personality_category, only: [:show, :edit, :update, :destroy]

  # GET /personality_categories
  # GET /personality_categories.json
  def index
    @personality_categories = PersonalityCategory.all
  end

  # GET /personality_categories/1
  # GET /personality_categories/1.json
  def show
  end

  # GET /personality_categories/new
  def new
    @personality_category = PersonalityCategory.new
  end

  # GET /personality_categories/1/edit
  def edit
  end

  # POST /personality_categories
  # POST /personality_categories.json
  def create
    @personality_category = PersonalityCategory.new(personality_category_params)

    respond_to do |format|
      if @personality_category.save
        format.html { redirect_to @personality_category, notice: 'Personality category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personality_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @personality_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personality_categories/1
  # PATCH/PUT /personality_categories/1.json
  def update
    respond_to do |format|
      if @personality_category.update(personality_category_params)
        format.html { redirect_to @personality_category, notice: 'Personality category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personality_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personality_categories/1
  # DELETE /personality_categories/1.json
  def destroy
    @personality_category.destroy
    respond_to do |format|
      format.html { redirect_to personality_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personality_category
      @personality_category = PersonalityCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personality_category_params
      params.require(:personality_category).permit(:label)
    end
end
