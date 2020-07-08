class CreateNewitems < ActiveRecord::Migration[6.0]
  def change
    create_table :newitems do |t|
      t.string :title
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
