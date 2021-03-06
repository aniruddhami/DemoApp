class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.references :gallery, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
