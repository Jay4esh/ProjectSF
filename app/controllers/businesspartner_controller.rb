class BusinesspartnerController < ApplicationController
    def show
        @businesspartner = BusinessPartner.find(params[:id])
    end
    def index
        @businesspartner = BusinessPartner.all
    end
    def new 
        @businesspartner = BusinessPartner.new
    end
    def create
        @businesspartner = BusinessPartner.new(businesspartner_params)

        if @businesspartner.save
            redirtect_to @businesspartner
        else
            render :new, status: :unprocessable_entity
        end
    end
end
private
 def businesspartner_params
    params.require(:businesspartner).permit(:customer_code, customer_name, corporate_number, invoice_number,postal_code,address,telephone_number)
 end