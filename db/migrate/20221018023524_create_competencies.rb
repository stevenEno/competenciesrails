class CreateCompetencies < ActiveRecord::Migration[7.0]
  def change
    create_table :competencies do |t|
      t.string :name
      t.string :short_desc
      t.string :long_desc
      t.string :industry
      t.string :primary_class
      t.string :secondary_class
      t.string :mastery1
      t.string :mastery2
      t.string :mastery3
      t.string :owner

      t.timestamps
    end
  end
end
