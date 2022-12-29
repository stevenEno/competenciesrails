class AddColumnsToProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :description, :string
  end
end
