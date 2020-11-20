class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      # t.check_constraint "name_cannot_start_with_c", "char_length(first_name) = 5"
      t.timestamps
    end

    # remove_check_constraint :distributors, "name_cannot_start_with_c"
  end
end
