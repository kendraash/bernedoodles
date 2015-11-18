class registrationsController < ApplicationController

  def create
    @paypal_registration = Registration.new(pay_pal_registration_params)
    if @paypal_registration.save
      redirect_to @paypal_registration.paypal_url(registration_path(@paypal_registration))
    else
      render :new
    end
  end


  protect_from_forgery except: [:hook]
  def hook
    params.permit! # Permit all Paypal input params
    status = params[:payment_status]
    if status == "Completed"
      @registration = Registration.find params[:invoice]
      @registration.update_attributes notification_params: params, status: status, transaction_id: params[:txn_id], purchased_at: Time.now
    end
    render nothing: true
  end


  private

  def paypal_registration_params

    params.require(:registration).permit(:notification_params, :status, :transaction_id, :purchased_at, :business, cmd:, upload:, invoice: item_name:, item_number:, quantity: )
  end
end
