class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    find_customer
  end

  def new
    @customer = Customer.new
  end

  def create
    # name = params[:name]
    # @customer = Customer.create(name: name)
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to customer_path(@customer)
  end

  def edit
    find_customer
  end

  def update
    find_customer
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end
  
private

  def customer_params
    params.require(:customer).permit(:name,
    foods_attributes: [:name, :description])
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end
end
