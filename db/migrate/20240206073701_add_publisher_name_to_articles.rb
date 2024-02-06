class AddPublisherNameToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :co_author_name, :string
  end
end
