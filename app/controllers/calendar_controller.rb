class CalendarController < ApplicationController
  layout 'calendar', only: [:index]

  def index
    @users = User.all
    @events = current_user.events
    respond_to do |format|
      format.html
    end
  end

  private
    def set_calendar
      @calendar = Calendar.find(params[:id])
      unless @calendar = current_user.calendar.where(id: params[:id]).first
        flash[:alert] = 'Calendar not found.'
        redirect_to root_url
      end
    end

    def calendar_params
      params.require(:calendar).permit(:user_id)
    end
end
