class CreateInternships < ActiveRecord::Migration[7.0]
  def change
    create_table :internships do |t|
      t.string :name
      t.string :company
      t.string :industry
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :application_link
      t.string :contact

      t.timestamps
    end
  end
end
