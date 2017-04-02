class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.integer :Loan_number
      t.string :Assistant
      t.string :Manager
      t.string :Processor
      t.string :Escrow
      t.string :Creator

      t.timestamps
    end

    create_table :related_dates do |t|
      t.belongs_to :loan, index: true
      t.date :Create_Date
      t.date :Open_Date
      t.date :Est_Closing_Date
      t.date :Escrow_Open_Date
      t.date :Prelim_Date
      t.date :Appraisal_Date
      t.date :Inspection_Date
      t.text :Generate_Closing_Instruction
      t.date :Order_Loan_Doc_Date
      t.date :Closing_Date
      t.date :Sch_To_Refine_Date

      t.timestamps
    end
  end
end
