class GroupsController < ApplicationController
  before_action :authenticate_user!, except: :welcome
  def index
    @current_user = current_user
    @categories = @current_user.all_categories(current_user.id)
  end

  def welcome
    set_meta_tags og:{
      image: "https://live.staticflickr.com/65535/51899757706_ab3053cd3f_z.jpg"
    }
  end

  def new
    @current_user = current_user
  end

  def create
    @user = current_user
    @new_group = Group.create!(groups_params)
    redirect_to user_groups_path if @new_group.save
  end

  private

  def groups_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
