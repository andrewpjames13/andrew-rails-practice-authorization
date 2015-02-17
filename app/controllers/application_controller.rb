class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_student
    Student.find_by_id(session[:student_id])
  end

  def authenticate
    if not current_student
      redirect_to login_path, notice:'Not signed in'
    end
  end

  helper_method :current_student

end
