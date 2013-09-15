class AddDataToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :data, :text
  end
end
