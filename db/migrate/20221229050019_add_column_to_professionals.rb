class AddColumnToProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :linked_in, :string
  end
end
