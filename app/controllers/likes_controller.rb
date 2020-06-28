class LikesController < Users::ApplicationController
  def create
    @like = current_user.likes.create(parise_id: params[:parise_id])
    redirect_back(fallback_location: parises_path)
  end

  def destroy
    @like = Like.find_by!(user_id: current_user.id, parise_id: params[:parise_id]).destroy!
    redirect_back(fallback_location: parises_path)
  end
end
