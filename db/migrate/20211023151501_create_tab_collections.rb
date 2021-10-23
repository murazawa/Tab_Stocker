class CreateTabCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :tab_collections do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
