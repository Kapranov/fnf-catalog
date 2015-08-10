# == Schema Information
#
# Table name: uploads
#
#  id                  :integer          not null, primary key
#  product_id          :integer
#  company_id          :integer
#  avatar_id           :string
#  attach_filename     :string
#  attach_size         :integer
#  attach_content_type :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_uploads_on_company_id  (company_id)
#  index_uploads_on_product_id  (product_id)
#

FactoryGirl.define do
  factory :upload do
    product nil
avatar_id "MyString"
  end

end
