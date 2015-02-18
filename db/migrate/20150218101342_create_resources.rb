class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :url
      t.string :title
      t.string :user_id
      t.string :category_id

      t.timestamps
    end
  end
end
