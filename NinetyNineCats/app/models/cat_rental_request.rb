class CatRentalRequest < ApplicationRecord
  STATUSES = ["PENDING", "DENIED", "APPROVED"]

  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: CatRentalRequest::STATUSES }

  belongs_to :cat

end
