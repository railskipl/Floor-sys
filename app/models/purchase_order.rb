class PurchaseOrder < ActiveRecord::Base
  has_many :purchase_order_items, :include => :product, :dependent => :destroy
  
  def total_price
     purchase_order_items.inject(0){|sum, o| sum + o.price}
  end
  
  def create_invoice_pdf
    require 'prawn'
    require 'prawn/layout'
    require 'prawn/table'
    require 'pdf_helper.rb'


    helper = PdfHelper.new
    pdf = helper.create_document

    helper.add_spacer(pdf)
    helper.add_spacer(pdf)
    helper.add_spacer(pdf)
    helper.add_spacer(pdf)

    helper.add_title(pdf, "Purchase Order")

    helper.add_sub_title(pdf, "*** Invoice Overview ***") 
    helper.add_spacer(pdf)
    helper.add_spacer(pdf)
    helper.add_spacer(pdf)
    helper.add_spacer(pdf)

   

    invoice_details(pdf, helper)

    helper.add_footer(pdf)

    pdf
  end
  
  
  def invoice_details(pdf, helper)
    helper.add_heading(pdf, "Order Details")

    table_data =  [["Product ID", "Product Name", "Unit Price", "  ", "Quantity", "Price"]]
    self.purchase_order_items.each do |item|
      table_data << [
        item.product.id,
        item.product.product_name,
        FormatHelper.format_currency(item.product.purchase_price),
        FormatHelper.format_decimal_number(item.quantity),
        FormatHelper.format_currency(item.price)
      ]
    end
    
    table_data << ["", "", "", "", "TOTAL PRICE", self.total_price]
    table_rows = table_data.length - 1

    pdf.table(table_data) do
      cells.borders = []
      cells.padding = 2

      row(0).style(:font_style => :bold, :borders => [:bottom])
      column(0).style(:width => 50)
      column(1).style(:width => 200)
      column(2).style(:width => 70, :align => :right)
      
      column(4).style(:width => 70, :align => :right)
      column(5).style(:width => 70, :align => :right)
      row(table_rows - 1).style(:font_style => :bold)
      row(table_rows).style(:font_style => :bold)
      cells[table_rows - 1,3].style(:borders => [:top])
      cells[table_rows - 1,4].style(:borders => [:top])
      cells[table_rows,3].style(:borders => [:bottom])
      cells[table_rows,4].style(:borders => [:bottom])
    end
  end
   
end
