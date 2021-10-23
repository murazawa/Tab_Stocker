class CreateMyLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :my_links do |t|
      t.string :titlee, null:false
      t.string :description
      t.text :urle, null:false
      t.boolean :status, default: false, null: false

      t.timestamps
    end
  end
end
