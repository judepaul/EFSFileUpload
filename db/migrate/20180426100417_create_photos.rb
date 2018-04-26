class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :name
      t.text :photo
      t.timestamps null: false
    end
  end
end
