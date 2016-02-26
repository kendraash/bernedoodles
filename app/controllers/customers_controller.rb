class CustomersController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @customer = @list.customers.new
  end

  def create
    @list = List.find(params[:list_id])
    @customer = @list.customers.new(customer_params)
    if @customer.save
      redirect_to list_path(@customer.list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:list_id])
    @customer = Customer.find(params[:id])
    render :edit
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to list_path(params[:list_id])
    else
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to list_path(params[:list_id])
  end

  private

    def customer_params
      params.require(:customer).permit(:name, :city, :state)
      # params.require(:customer).permit(:done)
    end
end
