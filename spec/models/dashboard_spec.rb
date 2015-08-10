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

require 'rails_helper'

RSpec.describe Dashboard, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
