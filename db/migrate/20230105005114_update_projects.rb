class UpdateProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :user, foreign_key: true
    add_column :projects, :s_curve, :string
    rename_column :projects, :primary_class, :industry
    rename_column :projects, :secondary_class, :constraints
  end
end
