class AddVisibleToInternships < ActiveRecord::Migration[7.0]
  def change
    add_column :internships, :is_visible, :boolean
  end
end
