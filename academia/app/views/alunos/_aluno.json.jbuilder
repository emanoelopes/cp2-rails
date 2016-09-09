json.extract! aluno, :id, :nome, :inicio, :pagamento, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)