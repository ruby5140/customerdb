class CustomersController < ApplicationController
    # Customerの全アクションはログインが必須
    before_action :authenticate_user!
    # 処理を共通化
    before_action :set_customer, only: [:show, :edit, :update, :destroy]

    def index
      
    end
    
    #search用
    def search
       #検索ワードなし →　空の文字列
       if params[:search].present?
          #if params.has_key(:search)? 
          @customers = Customer.search(params[:search])
       elsif params[:search].nil?
          #@customers = Customer.all
          #空の配列
          @customers = []
       else
          @customers = Customer.all
       
       end
    end
    
    #CSV用
    def csv_output
        @customers = Customer.where(id: params[:customer_ids])
        send_data render_to_string, filename: "customers.csv", type: :csv
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
          flash.now[:danger] = "登録��失敗しました"  
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