class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :name
      t.string :course
      t.integer :id_number
      t.float :prelim
      t.float :midterm
      t.float :prefinal
      t.float :final

      t.timestamps
    end
  end
end
