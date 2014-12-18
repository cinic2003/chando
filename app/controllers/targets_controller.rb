class TargetsController < ApplicationController
  def index
    @target = Target.where(month: "#{Date.today.year}-#{Date.today.month}").first
  end
  
  def create
    target = Target.new(target_params)
    target.save
    redirect_to :back
  end
  
  def list
    @sales = Sale.where(:tday => {"$gte" => Date.today.at_beginning_of_month, 
                                  "$lte" => Date.today.at_end_of_month})
  end
  
  def get_items_of_category
    if params[:id]
      category = Category.find_by(id: params[:id])
      items = category.items
      render json: {items: items.map{|i| {id: i.id.to_s, name: i.name, price: i.price}}}
    else
      render json: {status: 0}
    end
  end
  
  private
  
  def target_params
    params[:target].permit(:month, :amount)
  end
end
