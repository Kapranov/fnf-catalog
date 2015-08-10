# == Schema Information
#
# Table name: dashboards
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dashboards_on_user_id  (user_id) UNIQUE
#

class Dashboard < ActiveRecord::Base
  belongs_to :user

  include PublicActivity::Model
  tracked
end
