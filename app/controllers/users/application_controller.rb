class Users::ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました。"
      diaries  #指定したいパスに変更
    else
      flash[:notice] = "新規登録完了しました。ログインしてください。"
      new_user_session
    end
  end

  def after_sign_out_path_for(resource)
    flash[:notice] = "ログアウトしました。"
    root_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
