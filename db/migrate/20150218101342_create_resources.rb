class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :url
      t.string :title
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
