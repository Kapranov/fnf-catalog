class CalendarController < ApplicationController
  layout 'calendar', only: [:index]

  def index
    @users = User.all
  end

  private
    def calendar_params
      params.require(:calendar).permit(:user_id)
    end
end
