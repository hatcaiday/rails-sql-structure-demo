class AddFirstNameConstraintToUser < ActiveRecord::Migration[6.0]
  def change
    execute "ALTER TABLE users ADD CONSTRAINT name_cannot_start_with_c CHECK (first_name LIKE '%c')"
  end

  def down
    execute "ALTER TABLE users DROP CONSTRAINT IF EXISTS name_cannot_start_with_c"
  end
end
