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

FactoryGirl.define do
  factory :company do
    user nil
name "MyString"
description "MyText"
status false
  end

end
