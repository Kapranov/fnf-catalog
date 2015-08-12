# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  name                   :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  avatar_id              :string
#  note                   :text
#  about                  :text
#  deleted_at             :datetime
#
# Indexes
#
#  index_users_on_deleted_at            (deleted_at)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ActiveRecord::Base
  acts_as_paranoid

  has_many :categories
  has_many :dashboards
  has_many :products
  has_many :companies
  has_many :profiles
  has_many :calendar
  has_many :events, class_name: "::FullcalendarEngine::Event", foreign_key: "user_id", dependent: :destroy
  has_many :event_series
  has_many :forum_threads
  has_many :forum_posts

  attachment :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  translates :name, :note, :about, fallbacks_for_empty_translations: true

  validates :email, presence: true

  def to_s
    "#{name}"
  end

  def self.assign_from_row(row)
    user = User.where(email: row[:email]).first_or_initialize
    user.assign_attributes row.to_hash.slice(:first_name, :last_name)
    user
  end

  def self.to_csv
    attributes = %w{id email name}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

  def name
    if deleted_at?
      "Deleted User"
    else
      "#{email} #{name} #{avatar_id} #{note} #{about}"
    end
  end
end
