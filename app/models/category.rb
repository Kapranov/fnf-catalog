class Category < ActiveRecord::Base
  belongs_to :user
  has_many :products

  translates :name, :description, fallbacks_for_empty_translations: true

  include PublicActivity::Model
  # tracked owner: ->(controller, model) { controller && controller.current_user }
  tracked :owner => proc {|controller, model| controller.current_user},
    :params => {
      :summary => proc {|controller, model| controller.truncate(model.body, length: 30)}
    }

  def to_s
    "#{name}"
  end
end
