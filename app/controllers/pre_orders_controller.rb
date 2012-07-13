class PreOrdersController < ApplicationController
  # GET /pre_orders
  # GET /pre_orders.json
  def index
    @pre_orders = PreOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pre_orders }
    end
  end

  # GET /pre_orders/1
  # GET /pre_orders/1.json
  def show
    @pre_order = PreOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pre_order }
    end
  end

  # GET /pre_orders/new
  # GET /pre_orders/new.json
  def new
    @pre_order = PreOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pre_order }
    end
  end

  # GET /pre_orders/1/edit
  def edit
    @pre_order = PreOrder.find(params[:id])
  end

  # POST /pre_orders
  # POST /pre_orders.json
  def create
    @pre_order = PreOrder.new(params[:pre_order])

    respond_to do |format|
      if @pre_order.save
        format.html { redirect_to @pre_order, notice: 'Pre order was successfully created.' }
        format.json { render json: @pre_order, status: :created, location: @pre_order }
      else
        format.html { render action: "new" }
        format.json { render json: @pre_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pre_orders/1
  # PUT /pre_orders/1.json
  def update
    @pre_order = PreOrder.find(params[:id])

    respond_to do |format|
      if @pre_order.update_attributes(params[:pre_order])
        format.html { redirect_to @pre_order, notice: 'Pre order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pre_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_orders/1
  # DELETE /pre_orders/1.json
  def destroy
    @pre_order = PreOrder.find(params[:id])
    @pre_order.destroy

    respond_to do |format|
      format.html { redirect_to pre_orders_url }
      format.json { head :no_content }
    end
  end
end
