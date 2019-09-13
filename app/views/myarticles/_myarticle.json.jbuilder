json.extract! myarticle, :id, :user_id, :article_id, :time, :date, :created_at, :updated_at
json.url myarticle_url(myarticle, format: :json)
