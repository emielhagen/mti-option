# frozen_string_literal: true

class GradingPallet < Pallet
  has_one :companion, class_name: 'GradingPalletCompanion',
                      inverse_of: :grading_pallet,
                      dependent: :destroy, autosave: true

  delegate :value, :category, :value=, :category_id=, to: :lazily_built_companion

  scope :active, -> { where(deleted_at: nil) }
  scope :for_value, ->(value) { joins(:companion).merge(GradingPalletCompanion.for_value(value)) }
  scope :for_category, ->(name) { joins(:companion).merge(GradingPalletCompanion.for_category(name)) }

  private

  def lazily_built_companion
    companion || build_companion
  end
end
