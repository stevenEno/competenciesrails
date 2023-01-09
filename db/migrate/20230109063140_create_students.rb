class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :ikigai
      t.string :interest_1
      t.string :interest_2
      t.string :interest_3
      t.string :interest_4
      t.string :interest_5
      t.date :birthday
      t.string :career_goal

      t.timestamps
    end
  end
end
