class AddReferenceToProfessionals < ActiveRecord::Migration[7.0]
  def change
    remove_column :professionals, :user_id
    add_reference :professionals, :user, foreign_key: true
  end
end
