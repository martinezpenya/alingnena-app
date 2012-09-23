class LineItemsController < ApplicationController
  # GET /line_items
  # GET /line_items.json
  def index
    redirect_to Purchase.find(params[:purchase_id])
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
    redirect_to Purchase.find(params[:purchase_id])
  end

  # GET /line_items/new
  # GET /line_items/new.json
  def new
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.build
  end

  # GET /line_items/1/edit
  def edit
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.find(params[:id])
  end

  # POST /line_items
  # POST /line_items.json
  def create
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.build(params[:line_item])

    if @line_item.save
      redirect_to @purchase, :notice => 'Line item was successfully created.'
    else
      render :action => "new"
    end
  end

  # PUT /line_items/1
  # PUT /line_items/1.json
  def update
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.find(params[:id])

    if @line_item.update_attributes(params[:line_item])
      redirect_to @purchase, :notice => 'Line item was successfully updated.'
    else
      render :action => "edit"
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    @line_item = @purchase.line_items.find(params[:id])
    @line_item.destroy
    redirect_to @purchase, :notice => 'Line Item was successfully deleted.'
  end
end
