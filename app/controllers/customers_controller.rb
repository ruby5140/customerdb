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
        
        if @customers.save
          flash[:success] = "正常に登録されました"
          redirect_to @customers
        else
          flash.now[:danger] = "登録に失敗しました"  
          render :new
        end
        
    end
    
    def edit
        @customers = Customer.find(params[:id])
    end
    
    def update
        @customers = Customer.find(params[:id])
        
        if @customers.update(customer_params)
          flash[:success] = "正常に更新されました"
          redirect_to @customers
        else
          flash.now[:danger] = "更新されませんでした"
          render :edit
        end 
    end
    
    def destroy
        @customers = Customer.find(params[:id])
        @customers.destroy
        
        flash[:success] = "正常に削除されました"
        redirect_to customers_url
    end
    
    private
    
    # Strong Parameter
    def customer_params
        params.require(:customer).permit(:company , :phone , :server , :remark)
    
    end
    
end
