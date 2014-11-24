class Alapp < ActiveRecord::Base
  mount_uploader :driver_license_file, DriverLicenseFileUploader
  mount_uploader :document1, Document1Uploader
  mount_uploader :document2, Document2Uploader
  mount_uploader :document3, Document3Uploader
  mount_uploader :document4, Document4Uploader
  mount_uploader :document5, Document5Uploader

  has_many :employments

  SSN_FORMAT = /\A\d{9}\z/
  EMAIL_FORMAT = /\A[^@\s]+@(?:\w+\.)+[a-z]{2,}\z/i
  PHONE_FORMAT =/\A\(?\d{3}[-\.)]?\d{3}[-\.]?\d{4}\z/

  validates :first, :last, :alumni, :mother_maiden, :credit_req_type,
            :term, :vehicle_condition, :name_nearest_relative, :phone_nearest_relative,
            :driver_lisence_num, :signature, :today_date,
            presence: true
  validate :check_dob
  validates :ssn, format: {with: SSN_FORMAT, message: "SSN must be 9 digits with no other symbols, for example: 123456789"}

  validates :amount_req, numericality: { greater_than_or_equal_to: 0.0}

  validate :validates_vehicle_price_range
  validates :price_range_min, numericality: { greater_than_or_equal_to: 0.0}
  validates :price_range_max, numericality: { greater_than_or_equal_to: :price_range_min}
  validate :validates_vehicle_type

  validates :e_mail, format: {with: EMAIL_FORMAT}
  validates :phone_number, :phone_nearest_relative, format: {with: PHONE_FORMAT}

  validates :employ1_grosspay, :employ2_grosspay, :employ3_grosspay,
            :account1_current_balance, :account2_current_balance, :account3_current_balance, :account4_current_balance,
            :property1_market_val, :property2_market_val,
            :rent_housing, :food, :utilities, :phone_bill, :bursar_bill, :miscellaneous,
            numericality: {greater_than_or_equal_to: 0.0}, allow_nil: true

   validates :agree_terms, acceptance: true

  #validates_with AlappsHelper::DollarValidator, fields: [:employ1_grosspay]


  def check_dob
    if not dob.present?
      errors.add(:dob, "Date of birth can't be blank")
    elsif dob >= Date.today
      errors.add(:dob, "Date of birth must be in the past")
    end
  end

  def validates_vehicle_price_range
    if not price_range_min.present?
      errors.add(:price_range_min, "Price range required and must be in numerical form")
    end
    if not price_range_max.present?
      errors.add(:price_range_max, "Price range required and must be in numerical form")
    end
  end

  def validates_vehicle_type
    if not (veh_subcompact.present? or veh_compact.present? or veh_mid_size.present? or veh_full_size.present? or veh_sports_car.present? or veh_truck.present? or veh_van.present?)
      errors.add(:veh_type, "You must choose a vehicle type")
    end
  end



end
