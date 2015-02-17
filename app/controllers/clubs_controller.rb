class ClubsController < ApplicationController
  before_action :authenticate
  def index
    @clubs = current_student.clubs
  end

  def show
    @club = Club.find(params[:id])
    if not current_student.clubs.include?(@club)
      render 'public/403.html', status: 403
    end
  end

end
