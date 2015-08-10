class ProfilesController < ApplicationController
  layout 'dashboards', only: [:index]
  #respond_to :html, :js

  def index
    @users = User.all
    @activities = PublicActivity::Activity.all
  end

  def hello
    puts "====================!!!==================="
    @hello = "Hey"

    respond_to do |format|
      format.js { render :layout=>false }
    end
  end

end
