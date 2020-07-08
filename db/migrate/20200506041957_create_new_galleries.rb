class CreateNewGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :new_galleries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :discription
      t.string :images

      t.timestamps
    end
  end
end
