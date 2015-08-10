# == Schema Information
#
# Table name: forum_threads
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#
# Indexes
#
#  index_forum_threads_on_deleted_at  (deleted_at)
#

FactoryGirl.define do
  factory :forum_thread do
    user_id 1
subject "MyString"
  end

end
