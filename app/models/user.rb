class User < ApplicationRecord
  validate :name_cannot_start_with_d

  private

  def name_cannot_start_with_d
    if first_name.present? && first_name[0].downcase == 'c'
      errors.add(:first_name, "cannot start with the letter 'C'")
    end
  end
end
