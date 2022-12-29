class ModifyProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_index :professionals, :user_id
  end
end
