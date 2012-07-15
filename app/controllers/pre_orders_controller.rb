class PreOrdersController < ApplicationController
  respond_to :html, :js
  
  def index
    @pre_orders = PreOrder.all
    @pre_order= PreOrder.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pre_orders }
    end
  end

  def create
    @pre_order = PreOrder.create!(params[:pre_order])
    PrivatePub.publish_to("/pre_orders/new", pre_order: @pre_order)
  end

  def destroy
    PreOrder.delete_all

    respond_to do |format|
      format.html { redirect_to pre_orders_url }
      format.json { head :no_content }
    end
  end
end
