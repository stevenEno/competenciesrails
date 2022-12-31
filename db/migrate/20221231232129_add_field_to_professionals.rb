class AddFieldToProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :relationship_points, :integer
  end
end
