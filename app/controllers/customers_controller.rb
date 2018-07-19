class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def upload
<<<<<<< HEAD
    LeadsWorker.perform_async(params[:leads].path)
=======
    LeadsWorker.perform_async(params[:leads].pathredis)
>>>>>>> 7819c3f3b2da452e6db1e50536104ee668072b96
    redirect_to customers_path
  end

end
