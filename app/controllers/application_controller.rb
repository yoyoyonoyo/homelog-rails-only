class ApplicationController < ActionController::Base
  #事前にやってくださいねdeviseをインストールすることでdevise_parameter_sanitizerの
  #permitメソッドが使えるようになりますが、これがストロングパラメータに該当する機能です。
  #サインアップ時に入力された「name」キーの内容の保存を許可しています。
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
