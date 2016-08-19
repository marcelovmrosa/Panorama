class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    case resource.has_user?
      when user.admin === 1
        admin_path
      when user.aluno === 1
        aluno_path
      when user.coordenador === 1
        coordenador_path
      when orientador === 1
        orientador_path
    end
  end
end
