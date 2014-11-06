# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141105022101) do

  create_table "alapps", force: true do |t|
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.date     "dob"
    t.string   "mother_maiden"
    t.string   "ssn"
    t.boolean  "alumni"
    t.string   "credit_req_type"
    t.float    "amount_req"
    t.string   "term"
    t.string   "vehicle_condition"
    t.float    "price_range_min"
    t.float    "price_range_max"
    t.integer  "model_year"
    t.boolean  "veh_subcompact"
    t.boolean  "veh_compact"
    t.boolean  "veh_mid_size"
    t.boolean  "veh_full_size"
    t.boolean  "veh_sports_car"
    t.boolean  "veh_truck"
    t.boolean  "veh_van"
    t.string   "local_address_line1"
    t.string   "local_address_line2"
    t.string   "local_address_city"
    t.string   "local_address_state"
    t.string   "local_address_zip"
    t.integer  "local_country"
    t.string   "perm_address_line1"
    t.string   "perm_address_line2"
    t.string   "perm_address_city"
    t.string   "perm_address_state"
    t.string   "perm_address_zip"
    t.string   "perm_country"
    t.string   "e_mail"
    t.string   "phone_number"
    t.string   "name_nearest_relative"
    t.string   "phone_nearest_relative"
    t.string   "driver_lisence_num"
    t.string   "driver_license_file"
    t.string   "employ1_employer"
    t.string   "employ1_employer_addr"
    t.string   "employ1_position"
    t.string   "employ1_supervisor"
    t.float    "employ1_grosspay"
    t.string   "employ1_freq"
    t.boolean  "employ1_continue"
    t.string   "employ1_expect_duration"
    t.string   "employ2_employer"
    t.string   "employ2_employer_addr"
    t.string   "employ2_position"
    t.string   "employ2_supervisor"
    t.float    "employ2_grosspay"
    t.string   "employ2_freq"
    t.boolean  "employ2_continue"
    t.string   "employ2_expect_duration"
    t.string   "add_income1_source"
    t.float    "add_income1_amount"
    t.string   "add_income1_freq"
    t.string   "add_income2_source"
    t.float    "add_income2_amount"
    t.string   "add_income2_freq"
    t.string   "add_income3_source"
    t.float    "add_income3_amount"
    t.string   "add_income3_freq"
    t.string   "account1_depository"
    t.string   "account1_type"
    t.float    "account1_current_balance"
    t.string   "account2_depository"
    t.string   "account2_type"
    t.float    "account2_current_balance"
    t.string   "account3_depository"
    t.string   "account3_type"
    t.float    "account3_current_balance"
    t.string   "account4_depository"
    t.string   "account4_type"
    t.float    "account4_current_balance"
    t.string   "property1_st_addr"
    t.string   "property1_city"
    t.string   "property1_state"
    t.float    "property1_market_val"
    t.boolean  "property1_another_loan"
    t.string   "property2_st_addr"
    t.string   "property2_city"
    t.string   "property2_state"
    t.float    "property2_market_val"
    t.boolean  "property2_another_loan"
    t.string   "credit_card1_name"
    t.float    "credit_card1_limit"
    t.float    "credit_card1_balance"
    t.date     "credit_card1_date_payment"
    t.float    "credit_card1_aveg_month_pay"
    t.boolean  "credit_card1_pastdue"
    t.string   "credit_card2_name"
    t.float    "credit_card2_limit"
    t.float    "credit_card2_balance"
    t.date     "credit_card2_date_payment"
    t.float    "credit_card2_aveg_month_pay"
    t.boolean  "credit_card2_pastdue"
    t.string   "credit_card3_name"
    t.float    "credit_card3_limit"
    t.float    "credit_card3_balance"
    t.date     "credit_card3_date_payment"
    t.float    "credit_card3_aveg_month_pay"
    t.boolean  "credit_card3_pastdue"
    t.string   "credit_card4_name"
    t.float    "credit_card4_limit"
    t.float    "credit_card4_balance"
    t.date     "credit_card4_date_payment"
    t.float    "credit_card4_aveg_month_pay"
    t.boolean  "credit_card4_pastdue"
    t.string   "loan1_name"
    t.string   "loan1_type"
    t.float    "loan1_principal"
    t.date     "loan1_date_payment"
    t.float    "loan1_month_payment"
    t.boolean  "loan1_pastdue"
    t.string   "loan2_name"
    t.string   "loan2_type"
    t.float    "loan2_principal"
    t.date     "loan2_date_payment"
    t.float    "loan2_month_payment"
    t.boolean  "loan2_pastdue"
    t.string   "loan3_name"
    t.string   "loan3_type"
    t.float    "loan3_principal"
    t.date     "loan3_date_payment"
    t.float    "loan3_month_payment"
    t.boolean  "loan3_pastdue"
    t.string   "loan4_name"
    t.string   "loan4_type"
    t.float    "loan4_principal"
    t.date     "loan4_date_payment"
    t.float    "loan4_month_payment"
    t.boolean  "loan4_pastdue"
    t.float    "rent_housing"
    t.string   "rent_person"
    t.float    "food"
    t.string   "food_person"
    t.float    "utilities"
    t.string   "utilities_person"
    t.float    "phone_bill"
    t.string   "phone_bill_person"
    t.float    "bursar_bill"
    t.float    "miscellaneous"
    t.string   "miscellaneous_expl"
    t.string   "document1"
    t.string   "document2"
    t.string   "document3"
    t.string   "document4"
    t.string   "document5"
    t.boolean  "agree_terms"
    t.string   "signature"
    t.date     "today_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cbpapps", force: true do |t|
    t.integer  "period"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "ssn"
    t.date     "dob"
    t.string   "mother_maiden"
    t.integer  "account_number"
    t.integer  "grad_date"
    t.string   "non_upenn_email"
    t.string   "how_know"
    t.string   "local_address_line1"
    t.string   "local_address_line2"
    t.string   "local_address_city"
    t.string   "local_address_state"
    t.integer  "local_address_zip"
    t.string   "local_home_phone"
    t.string   "biz_phone"
    t.string   "perm_address_line1"
    t.string   "perm_address_line2"
    t.string   "perm_address_city"
    t.string   "perm_address_state"
    t.integer  "perm_address_zip"
    t.string   "perm_address_country"
    t.string   "perm_home_phone"
    t.integer  "student_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maapps", force: true do |t|
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.date     "dob"
    t.integer  "student_status"
    t.integer  "penn_affiliation"
    t.integer  "grad_year"
    t.integer  "penn_id"
    t.integer  "ssn"
    t.string   "file_ssn"
    t.string   "doc_type"
    t.integer  "doc_id"
    t.string   "file_id1"
    t.string   "file_id2"
    t.integer  "mobile_phone"
    t.integer  "home_phone"
    t.string   "penn_email"
    t.string   "alter_email"
    t.string   "local_address_line1"
    t.string   "local_address_line2"
    t.string   "local_address_city"
    t.string   "local_address_state"
    t.integer  "local_address_zip"
    t.string   "perm_address_line1"
    t.string   "perm_address_line2"
    t.string   "perm_address_city"
    t.string   "perm_address_state"
    t.integer  "perm_address_zip"
    t.boolean  "statement_type_paper"
    t.boolean  "statement_type_electronic"
    t.integer  "checking_account"
    t.boolean  "courtesy_pay"
    t.boolean  "visa_check_card"
    t.integer  "visa_pin"
    t.integer  "visa_repeat_pin"
    t.integer  "visa_delivery"
    t.boolean  "penncard_link"
    t.integer  "penncard_number"
    t.boolean  "order_checks"
    t.integer  "address_on_checks"
    t.integer  "check_type"
    t.string   "color"
    t.string   "check_delivery"
    t.boolean  "term"
    t.boolean  "understand"
    t.string   "signature"
    t.date     "today_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ulapps", force: true do |t|
    t.integer  "type"
    t.text     "joint_applicant"
    t.integer  "amount"
    t.text     "purpose"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "ssn"
    t.integer  "sfcu_account"
    t.string   "name_relative"
    t.integer  "phone_relative"
    t.string   "mothers"
    t.date     "graduation"
    t.string   "local_address_line1"
    t.string   "local_address_line2"
    t.string   "local_address_city"
    t.string   "local_address_state"
    t.integer  "local_address_zip"
    t.string   "local_country"
    t.integer  "same"
    t.string   "perm_address_line1"
    t.string   "perm_address_line2"
    t.string   "perm_address_city"
    t.string   "perm_address_state"
    t.integer  "perm_address_zip"
    t.string   "perm_country"
    t.string   "e_mail"
    t.integer  "phone_areacode"
    t.integer  "phone_number"
    t.integer  "phone_type"
    t.integer  "alter_areacode"
    t.integer  "alter_number"
    t.integer  "alter_type"
    t.string   "employer"
    t.string   "employee_address_line1"
    t.string   "employee_address_line2"
    t.string   "employee_address_city"
    t.string   "employee_address_state"
    t.integer  "employee_address_zip"
    t.string   "employee_country"
    t.string   "position"
    t.string   "supervisor_firstname"
    t.string   "supervisor_lastname"
    t.integer  "grosspay"
    t.integer  "disbursement"
    t.date     "startingdate"
    t.integer  "continue"
    t.text     "no"
    t.text     "additional"
    t.string   "employer2"
    t.string   "employee2_address_line1"
    t.string   "employee2_address_line2"
    t.string   "employee2_address_city"
    t.string   "employee2_address_state"
    t.integer  "employee2_address_zip"
    t.string   "employee2_country"
    t.string   "position2"
    t.string   "supervisor2_firstname"
    t.string   "supervisor2_lastname"
    t.integer  "grosspay2"
    t.integer  "disbursement2"
    t.date     "startingdate2"
    t.integer  "continue2"
    t.text     "no2"
    t.string   "source1"
    t.integer  "amount1"
    t.string   "source2"
    t.integer  "amount2"
    t.string   "source3"
    t.integer  "amount3"
    t.string   "depository1"
    t.integer  "account_type1"
    t.integer  "balance1"
    t.string   "depository2"
    t.integer  "account_type2"
    t.integer  "balance2"
    t.string   "depository3"
    t.integer  "account_type3"
    t.integer  "balance3"
    t.string   "addr1"
    t.integer  "market_value1"
    t.integer  "pledged1"
    t.string   "addr2"
    t.integer  "market_value2"
    t.integer  "pledged2"
    t.string   "addr3"
    t.integer  "market_value3"
    t.integer  "pledged3"
    t.string   "creditor1"
    t.integer  "cbalance1"
    t.date     "nextpayment1"
    t.integer  "avg1"
    t.integer  "pastdue1"
    t.string   "creditor2"
    t.integer  "cbalance2"
    t.date     "nextpayment2"
    t.integer  "avg2"
    t.integer  "pastdue2"
    t.string   "creditor3"
    t.integer  "cbalance3"
    t.date     "nextpayment3"
    t.integer  "avg3"
    t.integer  "pastdue3"
    t.string   "creditor4"
    t.integer  "cbalance4"
    t.date     "nextpayment4"
    t.integer  "avg4"
    t.integer  "pastdue4"
    t.string   "loan_creditor1"
    t.integer  "creditor_type1"
    t.date     "first_payment1"
    t.date     "last_payment1"
    t.integer  "monthly1"
    t.integer  "past_due1"
    t.string   "loan_creditor2"
    t.integer  "creditor_type2"
    t.date     "first_payment2"
    t.date     "last_payment2"
    t.integer  "monthly2"
    t.integer  "past_due2"
    t.text     "expenses"
    t.string   "ulapp_file1"
    t.string   "file1"
    t.string   "file2"
    t.string   "file3"
    t.string   "file4"
    t.string   "file5"
    t.string   "file6"
    t.integer  "yesorno"
    t.string   "signature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
