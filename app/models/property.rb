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

class Property < ActiveRecord::Base
  belongs_to :product
  translates :key, :value, fallbacks_for_empty_translations: true
end
