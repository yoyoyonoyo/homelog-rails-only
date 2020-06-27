class ApplicationController < ActionController::Base
  #事前にやってくださいねdeviseをインストールすることでdevise_parameter_sanitizerの
  #permitメソッドが使えるようになりますが、これがストロングパラメータに該当する機能です。
  #サインアップ時に入力された「name」キーの内容の保存を許可しています。
  before_action :configure_permitted_parameters, if: :devise_controller?

  #アカウント登録後のリダイレクト先
  def after_sign_up_path_for(resource)
    new_user_session_path
  end

  #アカウント編集後のリダイレクト先
  def after_update_path_for(resource)
    users_path
  end

  #ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    users_path
  end
  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
