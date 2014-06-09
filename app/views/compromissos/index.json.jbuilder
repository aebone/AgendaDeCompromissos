json.array!(@compromissos) do |compromisso|
  json.extract! compromisso, :id, :titulo, :texto, :date
  json.url compromisso_url(compromisso, format: :json)
end
