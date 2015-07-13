class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.belongs_to :student, index: true, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
