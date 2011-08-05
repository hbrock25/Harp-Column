class SoundClipsController < InheritedResources::Base

  def add_user
    sound_clip = SoundClip.find(params[:id])
    user = User.find(params[:user_slug])
    sound_clip.user_list << user.slug.name
    sound_clip.save
    redirect_to :back
  end

  def del_user
    sound_clip = SoundClip.find(params[:id])
    sound_clip.user_list.remove(params[:user_slug])
    sound_clip.save
    redirect_to :back
  end
end
