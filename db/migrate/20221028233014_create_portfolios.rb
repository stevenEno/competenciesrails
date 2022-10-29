class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :industry
      t.string :description
      t.string :goal

      t.timestamps
    end
  end
end
