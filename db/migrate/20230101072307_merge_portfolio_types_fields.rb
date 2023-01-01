class MergePortfolioTypesFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :portfolios, :is_ikigai, :boolean
    remove_column :portfolios, :is_skills, :boolean
    remove_column :portfolios, :is_scurve, :boolean
    remove_column :portfolios, :is_next, :boolean
    add_column :portfolios, :type, :string
  end
end
