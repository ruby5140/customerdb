class CustomersController < ApplicationController
    
    def index
        @customers = Customer.all
    end
    
    def show
        @customers = Customer.find(params[:id])
    end
    
    def new
        @customers = Customer.new
    end
    
    def create
        @customers = Customer.new(customer_params)
        
        if @customer.save
          flash[:success] = "正常に登録されました"
          redirect_to @customer
        else
          flash.now[:danger] = "登録に失敗しました"  
          render :new
        end
        
    end
    
    def edit
        @customers = Customer.find(params[:id])
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    # Strong Parameter
    def customer_params
        params.require(:customer).permit(:company , :phone , :server , :remark)
    
    end
    
end
