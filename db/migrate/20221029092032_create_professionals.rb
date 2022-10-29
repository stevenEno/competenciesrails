class CreateProfessionals < ActiveRecord::Migration[7.0]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :industry
      t.string :description
      t.integer :proj_avail
      t.integer :class_eng
      t.integer :student_exp
      t.integer :teacher_mentor

      t.timestamps
    end
  end
end
