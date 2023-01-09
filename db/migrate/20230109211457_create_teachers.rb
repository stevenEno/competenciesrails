class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :ikigai
      t.string :interest_1
      t.string :interest_2
      t.string :interest_3
      t.string :interest_4
      t.string :interest_5
      t.date :birthday
      t.boolean :is_CTE
      t.string :alma_mater
      t.string :eks_1
      t.string :eks_2
      t.string :eks_3
      t.string :eks_4
      t.string :eks_5
      t.string :eks_6
      t.string :eks_7
      t.string :eks_8
      t.string :eks_9

      t.timestamps
    end
  end
end
