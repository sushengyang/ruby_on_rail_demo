# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170401221841) do

  create_table "borrowers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Name"
    t.string   "Nickname"
    t.string   "Mailing_Address"
    t.string   "Email"
    t.string   "Phone"
    t.string   "Identity"
    t.string   "Driver_License"
    t.integer  "SSN"
    t.integer  "Credit_Score"
    t.string   "Passport"
    t.string   "Visa"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "loans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Assistant"
    t.string   "Manager"
    t.string   "Processor"
    t.string   "Escrow"
    t.string   "Creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "related_dates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "Create_Date"
    t.date     "Open_Date"
    t.date     "Est_Closing_Date"
    t.date     "Escrow_Open_Date"
    t.date     "Prelim_Date"
    t.date     "Appraisal_Date"
    t.date     "Inspection_Date"
    t.text     "Generate_Closing_Instruction", limit: 65535
    t.date     "Order_Loan_Doc_Date"
    t.date     "Closing_Date"
    t.date     "Sch_To_Refine_Date"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "loan_id"
  end

end
