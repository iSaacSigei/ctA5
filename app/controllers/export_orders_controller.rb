class ExportOrdersController < ApplicationController
    def create
      @export_order = ExportOrder.new(export_order_params)
  
      if @export_order.save
        # Handle successful save
        render json: @export_order, status: :created
      else
        # Handle validation errors
        render json: @export_order.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def export_order_params
      params.require(:export_order).permit(
        :export_to, :product, :units, :product_description,
        :company_name, :address, :city, :state_province, :contact,
        :request_quotation,
        images: [] # Allow multiple images
      )
    end
  end
  