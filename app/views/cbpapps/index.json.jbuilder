json.array!(@cbpapps) do |cbpapp|
  json.extract! cbpapp, :id, :period, :first_name, :middle_name, :last_name, :ssn, :dob, :mother_maiden, :account_number, :grad_date, :non_upenn_email, :how_know, :local_address_line1, :local_address_line2, :local_address_city, :local_address_state, :local_address_zip, :local_home_phone, :biz_phone, :perm_address_line1, :perm_address_line2, :perm_address_city, :perm_address_state, :perm_address_zip, :perm_address_country, :perm_home_phone, :student_status
  json.url cbpapp_url(cbpapp, format: :json)
end
