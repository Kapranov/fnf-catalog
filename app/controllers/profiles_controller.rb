class ProfilesController < ApplicationController
  layout 'dashboards', only: [:index]

  def index
    @users = User.all
  end

  private
    def profile_params
      params.require(:profile).permit(:user_id)
    end
end
