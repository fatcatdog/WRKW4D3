class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, :description, presence: true

  COLORS = ["white", "tan", "black", "grey", "orange", "chocolate"]

  def age
    dob = birth_date
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
