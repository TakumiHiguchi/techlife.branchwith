class EditcategoryController < ApplicationController
    before_action :normalization #herokuUrl正規化
  def index
      
      if signed_in? then
          @categorydatas=Category.all.order(created_at:"ASC")
      else
          redirect_to '/'
      end
  end

  def show
      
    if signed_in? then
    else
        redirect_to '/'
    end
          
  end

  def new
      
      if signed_in? then
          @e=Category.new
      else
          redirect_to '/'
      end
  end

  def create
      
      if signed_in? then
          c=Category.new(params_category)
          c.save
          redirect_to '/editcategory'
      else
          redirect_to '/'
      end
  end

  def edit
      
      if signed_in? then
          @e=Category.find_by(id:params[:id])
      else
          redirect_to '/'
      end
      
  end

  def update
      
      if signed_in? then
          @article = Category.find_by(id:params[:id])
          @article.update(params_category)
          redirect_to '/editcategory'
      else
          redirect_to '/'
      end
  end

  def destroy
      
      if signed_in? then
      else
            redirect_to '/'
      end
  end
  private
  def params_category
      params.require(:category).permit(:name,:parent_id)
  end
end
