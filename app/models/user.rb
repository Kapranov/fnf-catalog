class User < ActiveRecord::Base
  has_many :categories
  has_many :dashboards
  has_many :products
  has_many :companies
  has_many :profiles

  attachment :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  translates :name, :note, :about, fallbacks_for_empty_translations: true

  def to_s
    "#{name}"
  end
end
