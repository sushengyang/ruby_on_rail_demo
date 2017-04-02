class AddLoanIdToRelatedDate < ActiveRecord::Migration[5.0]
  def change
    add_column :related_dates, :loan_id, :string 
  end
end
