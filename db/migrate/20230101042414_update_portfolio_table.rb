class UpdatePortfolioTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :portfolios, :user, foreign_key: true
    add_column :portfolios, :is_ikigai, :boolean
    add_column :portfolios, :is_skills, :boolean
    add_column :portfolios, :is_scurve, :boolean
    add_column :portfolios, :is_next, :boolean
    rename_column :portfolios, :industry, :ikigai
    rename_column :portfolios, :goal, :next_build
  end
end
