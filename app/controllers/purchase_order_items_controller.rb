class PurchaseOrderItemsController < ApplicationController
  
  actions :index, :show
  before_filter :authenticate_user!
  
end
