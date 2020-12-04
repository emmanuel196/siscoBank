json.extract! user, :id, :firts_name, :type_user, :type_document, :document_number, :document_issuance_date, :document_expiration_date, :email, :phone, :phone_secundary, :created_at, :updated_at
json.url user_url(user, format: :json)
