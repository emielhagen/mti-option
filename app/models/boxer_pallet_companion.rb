# frozen_string_literal: true

class BoxerPalletCompanion < ApplicationRecord
  belongs_to :boxer_pallet, inverse_of: :companion
  belongs_to :category

  validates :boxer_pallet, presence: true

  scope :for_location, ->(location) { where(location: location) }
  scope :for_category, ->(category) { includes(:category).where(categories: { name: category }) }
end

