json.extract! site_contatct, :id, :name, :email, :message, :answered, :created_at, :updated_at
json.url site_contatct_url(site_contatct, format: :json)
