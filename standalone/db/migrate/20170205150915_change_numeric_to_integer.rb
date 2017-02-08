class ChangeNumericToInteger < ActiveRecord::Migration[5.0]
  def up
    change_column :courses, :order, :integer
  end

  def down
    change_column :courses, :order, :numeric
  end
end
