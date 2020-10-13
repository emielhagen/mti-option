# frozen_string_literal: true

class BoxerPallet < Pallet
  has_one :companion, class_name: 'BoxerPalletCompanion',
                      inverse_of: :boxer_pallet,
                      dependent: :destroy, autosave: true

  delegate :destination, :location, :category, :destination=, :location=,
           :category_id=, to: :lazily_built_companion

  validates :destination, :location, :category, presence: true

  scope :active, -> { where(deleted_at: nil) }
  scope :for_location, ->(location) { joins(:companion).merge(BoxerPalletCompanion.for_location(location)) }
  scope :for_category, ->(name) { joins(:companion).merge(BoxerPalletCompanion.for_category(name)) }

  private

  def lazily_built_companion
    companion || build_companion
  end
end
