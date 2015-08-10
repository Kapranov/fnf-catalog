# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string
#  description :text
#  displayed   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_categories_on_user_id  (user_id)
#

class Category < ActiveRecord::Base
  belongs_to :user
  has_many :products

  translates :name, :description, fallbacks_for_empty_translations: true

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
  #tracked :owner => proc {|controller, model| controller.current_user},
  #  :params => {
  #    :summary => proc {|controller, model| controller.truncate(model.body, length: 30)}
  #  }

  def to_s
    "#{name}"
  end
end
