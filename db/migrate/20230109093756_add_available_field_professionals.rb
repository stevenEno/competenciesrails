class AddAvailableFieldProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :is_currently_available, :boolean
  end
end
