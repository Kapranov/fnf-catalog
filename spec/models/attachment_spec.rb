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

require 'rails_helper'

RSpec.describe Attachment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
