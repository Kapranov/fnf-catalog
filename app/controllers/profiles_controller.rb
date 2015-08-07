class ProfilesController < ApplicationController
  layout 'dashboards', only: [:index]
  respond_to :html, :js

  def index
    @users = User.all
    @activities = PublicActivity::Activity.all
  end

end
