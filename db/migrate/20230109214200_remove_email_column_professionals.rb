class RemoveEmailColumnProfessionals < ActiveRecord::Migration[7.0]
  def change
    remove_column :professionals, :email
  end
end
