json.array!(@ulapps) do |ulapp|
  json.extract! ulapp, :id, :type, :joint_applicant, :amount, :purpose, :first_name, :last_name, :dob, :ssn, :sfcu_account, :name_relative, :phone_relative, :mothers, :graduation, :local_address_line1, :local_address_line2, :local_address_city, :local_address_state, :local_address_zip, :local_country, :perm_address_line1, :perm_address_line2, :perm_address_city, :perm_address_state, :perm_address_zip, :perm_country, :e_mail, :phone_areacode, :phone_number, :phone_type, :alter_areacode, :alter_number, :alter_type, :employer, :employee_address_line1, :employee_address_line2, :employee_address_city, :employee_address_state, :employee_address_zip, :employee_country, :position, :supervisor_firstname, :supervisor_lastname, :grosspay, :disbursement, :startingdate, :continue, :no, :additional, :employer2, :employee2_address_line1, :employee2_address_line2, :employee2_address_city, :employee2_address_state, :employee2_address_zip, :employee2_country, :position2, :supervisor2_firstname, :supervisor2_lastname, :grosspay2, :disbursement2, :startingdate2, :continue2, :no2, :source1, :amount1, :source2, :amount2, :source3, :amount3, :depository1, :account_type1, :balance1, :depository2, :account_type2, :balance2, :depository3, :account_type3, :balance3, :addr1, :market_value1, :pledged1, :addr2, :market_value2, :pledged2, :addr3, :market_value3, :pledged3, :creditor1, :cbalance1, :nextpayment1, :avg1, :pastdue1, :creditor2, :cbalance2, :nextpayment2, :avg2, :pastdue2, :creditor3, :cbalance3, :nextpayment3, :avg3, :pastdue3, :creditor4, :cbalance4, :nextpayment4, :avg4, :pastdue4, :loan_creditor1, :creditor_type1, :first_payment1, :last_payment1, :monthly1, :past_due1, :loan_creditor2, :creditor_type2, :first_payment2, :last_payment2, :monthly2, :past_due2, :expenses, :file1, :file2, :file3, :file4, :file5, :file6, :yesorno, :signature
  json.url ulapp_url(ulapp, format: :json)
end
