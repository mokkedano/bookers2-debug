class GroupsController < ApplicationController
  
  
  def new
    @group = Group.new
  end
  
  
  def create
end
  
  
  
  def index
    @book = Book.new
    @groups = Group.all
  end
  
  
  def edit
    @group = Group.find(params[:id])
  end
  
  
  
  private
  
  def group_params
    params.require(:group).permit(:name, :introduction, :image_id)
  end
  
  
end
