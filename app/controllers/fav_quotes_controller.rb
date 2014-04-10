class FavQuotesController < ApplicationController
  before_action :set_fav_quote, only: [:show, :edit, :update, :destroy]

  # GET /fav_quotes
  # GET /fav_quotes.json
  def index
    @fav_quotes = FavQuote.all
  end

  # GET /fav_quotes/1
  # GET /fav_quotes/1.json
  def show
  end

  # GET /fav_quotes/new
  def new
    @fav_quote = FavQuote.new
  end

  # GET /fav_quotes/1/edit
  def edit
  end

  # POST /fav_quotes
  # POST /fav_quotes.json
  def create
    @fav_quote = FavQuote.new(fav_quote_params)

    respond_to do |format|
      if @fav_quote.save
        format.html { redirect_to @fav_quote, notice: 'Fav quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fav_quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @fav_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fav_quotes/1
  # PATCH/PUT /fav_quotes/1.json
  def update
    respond_to do |format|
      if @fav_quote.update(fav_quote_params)
        format.html { redirect_to @fav_quote, notice: 'Fav quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fav_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fav_quotes/1
  # DELETE /fav_quotes/1.json
  def destroy
    @fav_quote.destroy
    respond_to do |format|
      format.html { redirect_to fav_quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fav_quote
      @fav_quote = FavQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fav_quote_params
      params.require(:fav_quote).permit(:text, :user_id, :source)
    end
end
