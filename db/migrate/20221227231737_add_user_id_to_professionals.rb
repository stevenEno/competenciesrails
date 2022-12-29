class AddUserIdToProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :user_id, :integer
  end
end
