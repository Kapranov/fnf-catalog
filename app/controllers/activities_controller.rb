class ActivitiesController < ApplicationController
  include PublicActivity::StoreController

  def index
    @activities = PublicActivity::Activity.all
  end
end
