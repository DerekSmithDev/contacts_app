class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  def friendly_created_at
    created_at.strftime("%m/%d/%y")
  end
  def friendly_updated_at
    updated_at.strftime("%m/%d/%y")
  end
  def full_name
    last_name + ", " + first_name + " " + middle_name
  end
end
