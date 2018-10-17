class Contact < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%m/%d/%y")
  end
  def friendly_updated_at
    updated_at.strftime("%m/%d/%y")
  end
  def full_name
    last_name + ", " + first_name
  end
end
