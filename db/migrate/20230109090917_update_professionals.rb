class UpdateProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :skill_1, :string
    add_column :professionals, :skill_2, :string
    add_column :professionals, :skill_3, :string
    add_column :professionals, :skill_4, :string
    add_column :professionals, :skill_5, :string
    add_column :professionals, :rating, :integer
  end
end
