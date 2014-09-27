json.array!(@mails) do |mail|
  json.extract! mail, :id, :from, :to, :subject, :description, :timestamp
  json.url mail_url(mail, format: :json)
end
