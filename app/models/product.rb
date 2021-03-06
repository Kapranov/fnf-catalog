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

class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :uploads, dependent: :destroy
  accepts_attachments_for :uploads, attachment: :avatar, append: true

  has_many :properties
  accepts_nested_attributes_for :properties, :reject_if => :all_blank, :allow_destroy => true

  has_many :attachments, dependent: :destroy
  accepts_nested_attributes_for :attachments, :reject_if => :all_blank, :allow_destroy => true
  accepts_attachments_for :attachments, attachment: :attach

  has_many :order_items

  translates :name, :sku, :description, :short_description, fallbacks_for_empty_translations: true

  monetize :price
  monetize :cost_price

  include PublicActivity::Model
  tracked

  default_scope { where(active: true) }

  # validates_associated :uploads
  # validates :category_id, :presence => true
  # validates :name, :sku, :presence => true
  # validates :price, :numericality => true
  # validates :cost_price, :numericality => true

  def out_of_stock?
    quantity.zero? || reserved_count == quantity
  end
end
