class CustomersController < ApplicationController
    # 処理を共通化
    before_action :set_customer, only: [:show, :edit, :update, :destroy]

    # 各アクションを定義    
    def index
        #CSV
        #@customers = Customer.all
        #respond_to do |format|
            #format.html 
            
            #format.csv do
            #send_data render_to_string, filename: "customers.csv", type: :csv
             #end
        #end
    end
    
    def search
        @customers = Customer.search(params[:search])
    end
    
    #CSV用
    def csv_output
        #@customers = params[:customer]
        @customers = Customer.all
        
        #@customers = Customer.all
        logger.debug("csv_outputに入りました")
        logger.debug(@customers.inspect)
        send_data render_to_string, filename: "customers.csv", type: :csv
        #respond_to do |format|
           #format.html
           #format.csv do
           #send_data render_to_string, filename: "customers.csv", type: :csv
         #end
        #end
    end
   
    def show
        # before_action
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
        # before_action
    end
    
    def update
    # before_action
        
        if @customers.update(customer_params)
          flash[:success] = "正常に更新されました"
          redirect_to @customers
        else
          flash.now[:danger] = "更新されませんでした"
          render :edit
        end 
    end
    
    def destroy
　　　　# before_action
        @customers.destroy
        
        flash[:success] = "正常に削除されました"
        redirect_to customers_url
    end
    
    # 以下privateメソッド
    private
    
    # 共通化 
    def set_customer
        @customers = Customer.find(params[:id])
    end

    # Strong Parameter
    def customer_params
        params.require(:customer).permit(:company , :phone , :server , :remark)
    
    end
end    