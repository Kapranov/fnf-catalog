# == Schema Information
#
# Table name: forum_posts
#
#  id              :integer          not null, primary key
#  forum_thread_id :integer
#  user_id         :integer
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe ForumPost, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
