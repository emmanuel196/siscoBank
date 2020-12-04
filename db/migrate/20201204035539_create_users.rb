class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firts_name
      t.string :type_user
      t.string :type_document
      t.string :document_number
      t.date :document_issuance_date
      t.date :document_expiration_date
      t.string :email
      t.bigint :phone
      t.bigint :phone_secundary

      t.timestamps
    end
  end
end
