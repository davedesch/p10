class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
