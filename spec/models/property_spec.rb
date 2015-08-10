# == Schema Information
#
# Table name: properties
#
#  id         :integer          not null, primary key
#  key        :string
#  value      :string
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_properties_on_product_id  (product_id)
#

require 'rails_helper'

RSpec.describe Property, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
