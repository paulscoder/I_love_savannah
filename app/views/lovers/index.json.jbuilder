json.array!(@lovers) do |lover|
  json.extract! lover, :id, :name, :secret_answer, :secret_question
  json.url lover_url(lover, format: :json)
end
