class CreateMyLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :my_links do |t|
      t.integer :user_id
      t.string :title, null:false
      t.string :description
      t.integer :status, null: false, :default => 0

      t.timestamps
    end
  end
end
