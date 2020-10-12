# frozen_string_literal: true

class BoxerPalletCompanion < ApplicationRecord
  belongs_to :boxer_pallet, inverse_of: :companion

  validates :boxer_pallet, presence: true
end
