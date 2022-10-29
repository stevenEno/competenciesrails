class AddUserIdToCompetencies < ActiveRecord::Migration[7.0]
  def change
    add_column :competencies, :user_id, :integer
    add_index :competencies, :user_id
  end
end
