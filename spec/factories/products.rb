# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  name              :string
#  sku               :string
#  description       :text
#  short_description :text
#  active            :boolean
#  weight            :decimal(12, 3)
#  price             :decimal(12, 3)
#  cost_price        :decimal(12, 3)
#  featured          :boolean
#  stock_control     :boolean
#  category_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_products_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :product do
    user nil
name "MyString"
sku "MyString"
description "MyText"
short_description "MyText"
active false
weight "9.99"
price "9.99"
cost_price "9.99"
featured false
stock_control false
category nil
  end

end
