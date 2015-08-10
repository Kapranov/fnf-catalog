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

class Company < ActiveRecord::Base
  belongs_to :user

  has_many :uploads, dependent: :destroy
  accepts_attachments_for :uploads, attachment: :avatar
  accepts_nested_attributes_for :uploads, allow_destroy: true

  has_many :attachments, dependent: :destroy
  accepts_nested_attributes_for :attachments, :reject_if => :all_blank, :allow_destroy => true
  accepts_attachments_for :attachments, attachment: :attach

  translates :name, :description, fallbacks_for_empty_translations: true

  include PublicActivity::Model
  tracked
end
