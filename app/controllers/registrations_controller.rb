class registrationsController < ApplicationController

  def create
    @paypal_registration = Registration.new(pay_pal_registration_params)
    if @paypal_registration.save
      redirect_to @paypal_registration.paypal_url(registration_path(@paypal_registration))
    else
      render :new
    end
  end

  private

  def paypal_registration_params
    #  Coming back to this
    params.require(:paypal).permit(:url)

end
