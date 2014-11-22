class AlappsController < ApplicationController
  before_action :set_alapp, only: [:show, :edit, :update, :destroy]

  # GET /alapps
  # GET /alapps.json
  def index
    @alapps = Alapp.all
  end

  def export
    render text: params[:exports]
  end

  # GET /alapps/1
  # GET /alapps/1.json
  def show
  end

  # GET /alapps/new
  def new
    @alapp = Alapp.new
  end

  #save updates at index page
  def save
    @alapp = Alapp.find(params[:id])
    respond_to do |format|
      @alapp.update(:application_status => 'Not working')
      format.html { redirect_to @alapp, notice: 'Alapp was successfully updated.' }
      format.json { render :show, status: :ok, location: @alapp }
    end
    # respond_to do |format|
    #   #set_alapp
    #   @alapp.update(alapp_status(@alapp))
    #   #@alapps = Alapp.all
    #   format.html { redirect_to alapps_url }
    #   # format.json { head :no_content }
    # end
  end

  # GET /alapps/1/edit
  def edit
  end

  # POST /alapps
  # POST /alapps.json
  def create
    @alapp = Alapp.new(alapp_params)

    respond_to do |format|
      if @alapp.save
        # flash[:notice] = "You have successfully submitted the form!"
        format.html { redirect_to alapps_path }
        format.json { render :show, status: :created, location: @alapp }
      else
        format.html { render :new }
        format.json { render json: @alapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alapps/1
  # PATCH/PUT /alapps/1.json
  def update
    respond_to do |format|
      if @alapp.update(alapp_params)
        format.html { redirect_to @alapp, notice: 'Alapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @alapp }
      else
        format.html { render :edit }
        format.json { render json: @alapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alapps/1
  # DELETE /alapps/1.json
  def destroy
    @alapp.destroy
    respond_to do |format|
      format.html { redirect_to alapps_url, notice: 'Alapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alapp
      @alapp = Alapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alapp_params
      params.require(:alapp).permit(:first, :middle, :last, :dob, :mother_maiden, :ssn, :alumni, :credit_req_type, :amount_req, :term, :vehicle_condition, :price_range_min, :price_range_max, :model_year, :veh_subcompact, :veh_compact, :veh_mid_size, :veh_full_size, :veh_sports_car, :veh_truck, :veh_van, :local_address_line1, :local_address_line2, :local_address_city, :local_address_state, :local_address_zip, :local_country, :perm_address_line1, :perm_address_line2, :perm_address_city, :perm_address_state, :perm_address_zip, :perm_country, :e_mail, :phone_number, :name_nearest_relative, :phone_nearest_relative, :driver_lisence_num, :driver_license_file, :employ1_employer, :employ1_employer_addr, :employ1_position, :employ1_supervisor, :employ1_grosspay, :employ1_freq, :employ1_continue, :employ1_expect_duration, :employ2_employer, :employ2_employer_addr, :employ2_position, :employ2_supervisor, :employ2_grosspay, :employ2_freq, :employ2_continue, :employ2_expect_duration, :add_income1_source, :add_income1_amount, :add_income1_freq, :add_income2_source, :add_income2_amount, :add_income2_freq, :add_income3_source, :add_income3_amount, :add_income3_freq, :account1_depository, :account1_type, :account1_current_balance, :account2_depository, :account2_type, :account2_current_balance, :account3_depository, :account3_type, :account3_current_balance, :account4_depository, :account4_type, :account4_current_balance, :property1_st_addr, :property1_city, :property1_state, :property1_market_val, :property1_another_loan, :property2_st_addr, :property2_city, :property2_state, :property2_market_val, :property2_another_loan, :credit_card1_name, :credit_card1_limit, :credit_card1_balance, :credit_card1_date_payment, :credit_card1_aveg_month_pay, :credit_card1_pastdue, :credit_card2_name, :credit_card2_limit, :credit_card2_balance, :credit_card2_date_payment, :credit_card2_aveg_month_pay, :credit_card2_pastdue, :credit_card3_name, :credit_card3_limit, :credit_card3_balance, :credit_card3_date_payment, :credit_card3_aveg_month_pay, :credit_card3_pastdue, :credit_card4_name, :credit_card4_limit, :credit_card4_balance, :credit_card4_date_payment, :credit_card4_aveg_month_pay, :credit_card4_pastdue, :loan1_name, :loan1_type, :loan1_principal, :loan1_date_payment, :loan1_month_payment, :loan1_pastdue, :loan2_name, :loan2_type, :loan2_principal, :loan2_date_payment, :loan2_month_payment, :loan2_pastdue, :loan3_name, :loan3_type, :loan3_principal, :loan3_date_payment, :loan3_month_payment, :loan3_pastdue, :loan4_name, :loan4_type, :loan4_principal, :loan4_date_payment, :loan4_month_payment, :loan4_pastdue, :rent_housing, :rent_person, :food, :food_person, :utilities, :utilities_person, :phone_bill, :phone_bill_person, :bursar_bill, :miscellaneous, :miscellaneous_expl, :document1, :document2, :document3, :document4, :document5, :agree_terms, :signature, :today_date)
    end

    # def alapp_status
    #   #params.require(:alapp).permit(:application_status)
    #
    #   params.require(:alapp).permit(:application_status)
    # end
end
