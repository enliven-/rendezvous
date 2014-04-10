class AnsweredQuestionsController < ApplicationController
  before_action :set_answered_question, only: [:show, :edit, :update, :destroy]

  # GET /answered_questions
  # GET /answered_questions.json
  def index
    @answered_questions = AnsweredQuestion.all
  end

  # GET /answered_questions/1
  # GET /answered_questions/1.json
  def show
  end

  # GET /answered_questions/new
  def new
    @answered_question = AnsweredQuestion.new
  end

  # GET /answered_questions/1/edit
  def edit
  end

  # POST /answered_questions
  # POST /answered_questions.json
  def create
    @answered_question = AnsweredQuestion.new(answered_question_params)

    respond_to do |format|
      if @answered_question.save
        format.html { redirect_to @answered_question, notice: 'Answered question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answered_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @answered_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answered_questions/1
  # PATCH/PUT /answered_questions/1.json
  def update
    respond_to do |format|
      if @answered_question.update(answered_question_params)
        format.html { redirect_to @answered_question, notice: 'Answered question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answered_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answered_questions/1
  # DELETE /answered_questions/1.json
  def destroy
    @answered_question.destroy
    respond_to do |format|
      format.html { redirect_to answered_questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answered_question
      @answered_question = AnsweredQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answered_question_params
      params.require(:answered_question).permit(:question_id, :answer_id, :user_id)
    end
end
