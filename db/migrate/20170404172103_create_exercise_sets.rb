class CreateExerciseSets < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_sets do |t|
      t.integer :reps
      t.integer :weight
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
