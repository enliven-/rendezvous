json.array!(@answered_questions) do |answered_question|
  json.extract! answered_question, :id, :question_id, :answer_id, :user_id
  json.url answered_question_url(answered_question, format: :json)
end
