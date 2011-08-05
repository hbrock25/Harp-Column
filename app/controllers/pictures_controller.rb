class PicturesController < InheritedResources::Base

  def add_user
    picture = Picture.find(params[:id])
    user = User.find(params[:user_slug])
    picture.user_list << user.slug.name
    picture.save
    redirect_to :back
  end

  def del_user
    picture = Picture.find(params[:id])
    picture.user_list.remove(params[:user_slug])
    picture.save
    redirect_to :back
  end
end
