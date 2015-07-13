class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.belongs_to :homework, index: true, foreign_key: true
      t.belongs_to :student, index: true, foreign_key: true
      t.integer :score

      t.timestamps null: false
    end
  end
end
