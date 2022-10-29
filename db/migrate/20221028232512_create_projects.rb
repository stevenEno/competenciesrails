class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :hook
      t.string :product
      t.string :primary_class
      t.string :secondary_class

      t.timestamps
    end
  end
end
