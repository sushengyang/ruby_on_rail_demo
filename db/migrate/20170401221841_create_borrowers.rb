class CreateBorrowers < ActiveRecord::Migration[5.0]
  def change
    create_table :borrowers do |t|
      t.string :Name
      t.string :Nickname
      t.string :Mailing_Address
      t.string :Email
      t.string :Phone
      t.string :Identity
      t.string :Driver_License
      t.integer :SSN
      t.integer :Credit_Score
      t.string :Passport
      t.string :Visa

      t.timestamps
    end
  end
end
