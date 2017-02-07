class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.numeric :order
      t.text :comment
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
