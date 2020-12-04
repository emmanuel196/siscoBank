class User < ApplicationRecord
    validates :firts_name, :type_user, :type_document, :document_number, :document_issuance_date,
     :document_expiration_date, :email, :phone, presence: true
    validates :phone, numericality: { only_integer: true, greater_than: 0 }
    validates :firts_name, format: { with: /\A[\p{L}\p{M}]+\z/,
        message: "only allows letters" }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: false }
end
