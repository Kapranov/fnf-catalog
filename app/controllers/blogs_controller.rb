class BlogsController < ApplicationController
  layout 'blogs', only: [:index]

  def index; end
end
