class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully deleted."
    redirect_to products_path
  end
  
  def new
    @product = Product.new

    # si volem posar valors per defecte:
    #@product = Product.new(:name => "dummy name")
  end
  
  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Product has been successfully created."
      redirect_to @product
    else
      render :action => "new"
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice => 'Product was successfully updated.'
    else
      render :action => "edit"
    end
  end
  
  def search
    @products = Product.find_all_by_name(params[:name])
  end
end
