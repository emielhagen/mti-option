# frozen_string_literal: true

class GradingPalletCompanion < ApplicationRecord
  belongs_to :grading_pallet, inverse_of: :companion
  belongs_to :category

  validates :grading_pallet, :value, :category, presence: true

  scope :for_value, ->(value) { where(value: value) }
  scope :for_category, ->(category) { includes(:category).where(categories: { name: category }) }
end

