class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :ikigai
      t.string :interest_1
      t.string :interest_2
      t.string :interest_3
      t.string :interest_4
      t.string :interest_5
      t.date :birthday
      t.string :school
      t.string :school_goal_1
      t.string :school_goal_2
      t.string :school_goal_3

      t.timestamps
    end
  end
end
