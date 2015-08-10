# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string
#  description :text
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_companies_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Company, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
