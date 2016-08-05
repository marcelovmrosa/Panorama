class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    case resource.has_user?
      when user.admin === 1
        render :partial => 'layouts/dashboard_admin'

      when user.aluno === 1
        render :partial => 'layouts/dashboard_aluno'

      when "coordenador"
        render :partial => 'layouts/dashboard_coordenador'

      when "orientador"
        render :partial => 'layouts/dashboard_orientador'
    end
  end
end
