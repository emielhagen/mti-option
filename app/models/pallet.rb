# frozen_string_literal: true

class Pallet < ApplicationRecord
  belongs_to :pallet_type

  validates :label, presence: true

  def soft_delete
    return false if deleted_at.present?

    update(deleted_at: Time.zone.now)
  end
end
