json.array!(@formalizacaos) do |formalizacao|
  json.extract! formalizacao, :id, :tema, :justificativa, :validacao, :motivo, :data, :aluno_id
  json.url formalizacao_url(formalizacao, format: :json)
end
