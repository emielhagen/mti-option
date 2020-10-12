# frozen_string_literal: true

class BoxerPallet < Pallet
  has_one :companion, class_name: 'BoxerPalletCompanion',
                      inverse_of: :boxer_pallet,
                      dependent: :destroy, autosave: true

  delegate :destination, :location, :category, :destination=, :location=,
           :category=, to: :lazily_built_companion

  validates :destination, :location, :category, presence: true

  scope :active, -> { where(deleted_at: nil) }

  private

  def lazily_built_companion
    companion || build_companion
  end
end
