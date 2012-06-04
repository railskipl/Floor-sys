require 'format_helper'
class PurchaseOrdersController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :prepare_common_variables, :only => [:new, :show, :edit]
  before_filter :find_order, :only => [:update, :show, :edit, :destroy, :invoice_pdf, :add_purchase_order_item, :remove_purchase_order_item]
  
  before_filter :find_basket, :only => [:add_basket_item, :remove_basket_item]
  before_filter :empty_basket, :only => [:edit, :destroy]
  before_filter :find_invoice, :only => [:toggle_order_invoiced_status]
  
  def index
    @purchase_orders = PurchaseOrder.order('created_at DESC')
  end
  
  def invoice
    @purchase_orders = PurchaseOrder.find(:all, :conditions=>"invoiced='1'", :order=>"created_at DESC")
    
  end
  
  
  
  def new
      @company = Company.find_all_by_company_id(current_user.company_id)
      @product = Product.find_all_by_company_id(current_user.company_id)  
  end

  def create
    basket = find_basket

    # Create Purchase Order
    purchase_order = PurchaseOrder.create(:deliver_to => params[:deliver_to], :deliver_phone => params[:deliver_phone], :order_date => "#{params[:order_date]}", :expected_date => "#{params[:expected_date__1i]}-#{params[:expected_date__2i]}-#{params[:expected_date__3i]}", :company_id => params[:company_id], :purchase_order_notes => params[:purchase_order_notes])
      
    # Create Purchase Order Items
    basket.items.each do |item|
      
      purchase_order_items = purchase_order.purchase_order_items.build(:product_id => item.product_id, :quantity => item.quantity)
      purchase_order_items.save
    end
    empty_basket
    redirect_to("/purchase_orders")
  end
  
  def edit
    @company = Company.find(current_user.company_id)
    @product = Product.find_all_by_company_id(current_user.company_id)
  end

  def update
    if @purchase_order.update_attributes(params[:purchase_order])
      flash[:notice] = 'PurchaseOrder was successfully updated.'
      empty_basket
      redirect_to("/purchase_orders")
    else
      render :edit
    end
  end
  
  
  def show
    @product = Product.find_all_by_company_id(current_user.company_id)
  end

  

  def invoice_pdf
    report = @purchase_order.create_invoice_pdf
    
     
      filename = 'Purchase-order-' + @purchase_order.deliver_to + '.pdf'
    
    send_data report.render, :filename => filename, :type => "application/pdf"
  end
  
  

  def update_products
    products = find_products_for_selection

    if products.size > 0
      @available_products = ["Select ..."] + products.map{|p| [p.name + ' [' + FormatHelper.format_currency(p.sale_price) + ']', p.id]}
    else
      @available_products = ["None Available"]
    end

    render :update do |page|
      page.replace_html 'product', :partial => 'product', :object => nil
    end
  end

  def find_products_for_selection
    if params[:product_type]
      product_type = ProductType.find(params[:product_type])
      product_type.products.ordered_by_product_name
    elsif params[:supplier]
      supplier = Supplier.find(params[:supplier])
      supplier.products.orderby_name
    else
      Product.ordered_by_product_name
    end
  end

  def add_purchase_order_item
    @purchase_order.purchase_order_items.create(:product_id => params[:product_id], :quantity => BigDecimal.new(params[:quantity]))
    redirect_to :action => :edit, :id => params[:id]
  end

  def remove_purchase_order_item
    @purchase_order_item = PurchaseOrderItem.find(params[:id2])
    @purchase_order_item.destroy
    
    redirect_to :action => :edit, :id => params[:id]
  end

  def add_basket_item
    @basket.add_product_quantity(Product.find(params[:product_id]), BigDecimal.new(params[:quantity]))
    redirect_to new_purchase_order_url(:id => params[:id])
  end 
  
  def destroy
    @purchase_order = PurchaseOrder.find(params[:id])
    @purchase_order.destroy

    respond_to do |format|
      format.html { redirect_to(purchase_orders_url) }
      format.xml  { head :ok }
    end
  end

  def remove_basket_item
    @basket.items.delete_at(params[:array_position].to_i - 1)
    redirect_to new_purchase_order_url(:id => params[:id])
  end
  
  def toggle_order_invoiced_status
    
    @purchase_order.invoiced = !@purchase_order.invoiced?
    @purchase_order.save!
    redirect_to(:controller => 'purchase_orders', :action => 'index')
  end

  protected
    def find_order
      @purchase_order = PurchaseOrder.find(params[:id])
    end
    
    def find_invoice
      @purchase_order = PurchaseOrder.find(params[:id])
    end

    def find_customer
      @customer = @purchase_order.customer
    end

    def prepare_common_variables
      
      
      @available_products = []
      @basket = find_basket
    end

    def prepare_available_products
      @available_products = ["Select ..."] + Product.ordered_by_product_name.map{|p| [p.name + ' [' + FormatHelper.format_currency(p.purchase_price) + ']', p.id]}
    end

    def find_basket
      @basket = session[:basket] ||= Basket.new
    end

    def empty_basket
      session[:basket] = nil
    end

end
