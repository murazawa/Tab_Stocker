class RenameTabCollectionIdColumnToFavorites < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :tab_collection_id, :my_link_id
  end
end
