# == Schema Information
#
# Table name: attachments
#
#  id                  :integer          not null, primary key
#  product_id          :integer
#  company_id          :integer
#  attach_id           :string
#  attach_filename     :string
#  attach_size         :integer
#  attach_content_type :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_attachments_on_company_id  (company_id)
#  index_attachments_on_product_id  (product_id)
#

class Attachment < ActiveRecord::Base
  belongs_to :product
  belongs_to :company

  attachment :attach

end
