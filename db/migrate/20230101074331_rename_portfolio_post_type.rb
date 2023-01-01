class RenamePortfolioPostType < ActiveRecord::Migration[7.0]
  def change
    rename_column :portfolios, :type, :post_type
  end
end
