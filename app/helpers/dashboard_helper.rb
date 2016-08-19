module DashboardHelper
  def monta_navside
    case action_name
      when "admin"
        render :partial => 'layouts/dashboard_admin'
      when "aluno"
        render :partial => 'layouts/dashboard_aluno'
      when "coordenador"
        render :partial => 'layouts/dashboard_coordenador'
        if user.orientador === 1
          render :partial => 'layouts/dashboard_orientador'
        end
      when "orientador"
        render :partial => 'layouts/dashboard_orientador'
    end
  end
end
