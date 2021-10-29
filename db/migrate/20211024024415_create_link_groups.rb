class CreateLinkGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :link_groups do |t|
      
      t.integer :user_id
      t.integer :my_link_id
      t.string :url_title , null:false
      t.text :url, null:false
      t.timestamps
    end
  end
end
