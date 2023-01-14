class AddEmailColumnProfessionals < ActiveRecord::Migration[7.0]
  def change
    add_column :professionals, :email, :string
  end
end
